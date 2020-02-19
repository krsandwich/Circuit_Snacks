#include "CircuitSnacksPowerSupply.h"
#include "Arduino.h"

const float VDD = 3.3;

float CircuitSnacksPowerSupply::measuredVoltageFiltered = 0.0;
float CircuitSnacksPowerSupply::measuredCurrentFiltered = 0.0;

// To Do: 
// - Set DAC PWM frequency. 
// - Restore calibration values from non-volatile memory.
// Done:
// - Initializes circular buffer indexes.
// - Initializes output to 0V.
// - Sets output current limit to max.
CircuitSnacksPowerSupply::CircuitSnacksPowerSupply()
{   
    // Used for measuring the output voltage/current
    Timer1 = new HardwareTimer(TIM1);
    Timer1->setOverflow(1000, HERTZ_FORMAT);
    Timer1->attachInterrupt(Timer1_OverflowCallback);
    Timer1->resume();
    
    // Used for PWM DAC
    Timer2 = new HardwareTimer(TIM2);

    Timer2->setMode(V_BOOST_CTRL_PWM_CHANNEL, TIMER_OUTPUT_COMPARE_PWM1, V_BOOST_CTRL_PWM_PIN);
    Timer2->setMode(V_CURR_LIM_PWM_CHANNEL, TIMER_OUTPUT_COMPARE_PWM1, V_CURR_LIM_PWM_PIN);
    Timer2->setMode(V_LIN_CTRL_PWM_CHANNEL, TIMER_OUTPUT_COMPARE_PWM1, V_LIN_CTRL_PWM_PIN);
    
    Timer2->setPrescaleFactor(1);
    Timer2->setOverflow(1023, TICK_FORMAT); 
    Timer2->setCaptureCompare(V_BOOST_CTRL_PWM_CHANNEL, 512, TICK_COMPARE_FORMAT);
    Timer2->setCaptureCompare(V_CURR_LIM_PWM_CHANNEL, 1023, TICK_COMPARE_FORMAT);
    Timer2->setCaptureCompare(V_LIN_CTRL_PWM_CHANNEL, 1023, TICK_COMPARE_FORMAT);
    Timer2->resume();
    
    voltageReadbackSlopeCal = 1.0;
    voltageSetSlopeCal = 1.0;
    currentReadbackOffsetCal = 0.0;
    currentReadbackSlopeCal = 1.0;
    currentLimitOffsetCal = 0.0;
    currentLimitSlopeCal = 1.0;
        
    
}

// Returns the filtered measured voltage
float CircuitSnacksPowerSupply::getMeasuredVoltage()
{
    return measuredVoltageFiltered*voltageReadbackSlopeCal;
}

// Returns the filtered measured current
float CircuitSnacksPowerSupply::getMeasuredCurrent()
{   
    return (measuredCurrentFiltered - currentReadbackOffsetCal)*currentReadbackSlopeCal;
}

// Sets the DACs for the output voltage using the calibration values, if present
void CircuitSnacksPowerSupply::setOutputVoltage(float Vout)
{
    const float V_FB = 1.25;
    const float R_C = 2.6e3;
    const float R_OUT = 10e3;
    const float R_GND = 910;
    
    const float V_DROPOUT = 2.0;

    // set the boost converter voltage to Vout + V_DROPOUT
    float Vc = V_FB+R_C*(V_FB-((voltageSetSlopeCal*Vout)+V_DROPOUT))/R_OUT+R_C*V_FB/R_GND;
    uint32_t value = (uint32_t) (Vc/VDD*1024);
    Timer2->setCaptureCompare(V_BOOST_CTRL_PWM_CHANNEL, value, TICK_COMPARE_FORMAT);
    
    
    // set the linear regulator voltage to Vout
    const float R_116 = 5.76e3;
    const float R_115 = 1e3;
    
    Vc = (voltageSetSlopeCal*Vout)*R_115/(R_115+R_116);
    value = (uint32_t) (Vc/VDD*1024);
    Timer2->setCaptureCompare(V_LIN_CTRL_PWM_CHANNEL, value, TICK_COMPARE_FORMAT);
}

// Sets the DACs for the output current limit using the calibration values, if present
void CircuitSnacksPowerSupply::setOutputCurrent(float Iout)
{
    // V_curr_lim*(R114/(R113+R114)) = Iout*R122 + VDD/(R118+R117)*(R117+R122)
    
    
    const float R113 = 15e3;
    const float R114 = 100;
    const float R117 = 100;
    const float R118 = 130e3;
    const float R122 = 0.1;
    
    float V_curr_lim = (Iout-currentLimitOffsetCal)*currentLimitSlopeCal*R122*(R113+R114)/R114 + VDD*(R117+R122)/(R118+R117)*(R113+R114)/R114;
     
    uint32_t value;
    value = (uint32_t) (V_curr_lim/VDD*1024);
    Timer2->setCaptureCompare(V_CURR_LIM_PWM_CHANNEL, value, TICK_COMPARE_FORMAT);
}

// Start doing voltage calibration. Sets output to what we expect to be 10V 
// without any calibration correction and disables current limit.
void CircuitSnacksPowerSupply::startVoltageCal()
{
    voltageSetSlopeCal = 1.0;
    setOutputCurrent(0.2);
    setOutputVoltage(10.0);
}

// Finish doing voltage calibration. Takes the value the user has measured,
// and uses it to calculate slope correction factors for setting the output
// voltage as well as the output voltage readback. Offset error is assumed
// to be zero.
void CircuitSnacksPowerSupply::finishVoltageCal(float measured_volts)
{
    voltageSetSlopeCal = 10.0/measured_volts;
    setOutputVoltage(10.0);
    delay(1000);
    voltageReadbackSlopeCal = 1.0;
    voltageReadbackSlopeCal = 10.0/getMeasuredVoltage();
}

// Starts current readback calibration. Measures the offset for zero current and
// leaves the current limit set for 100 mA nominal with no calibration.
void CircuitSnacksPowerSupply::startCurrentCal()
{
    currentReadbackOffsetCal = 0.0; //Disables current readback calibration
    currentReadbackSlopeCal = 1.0;
    
    setOutputCurrent(0.1);
    setOutputVoltage(0.0);
    delay(1000);
    
    currentReadbackOffsetCal = getMeasuredCurrent();
    
    currentLimitOffsetCal = 0.0; //Disables current limit calibration
    currentLimitSlopeCal = 1.0;
    setOutputCurrent(0.1);
    setOutputVoltage(1.0);
}

// Perform current limit calibration, assuming current measurement calibration has
// been performed and a short is connected across the output. Measures current
// for two different current limit setpoints and calculates offset and slope error
// correction factors. Saves these correction factors to non-volatile memory.
void CircuitSnacksPowerSupply::finishCurrentCal(float measured_amps)
{
    currentReadbackSlopeCal = measured_amps/getMeasuredCurrent();
    //current readback should now be accurate
    
    setOutputCurrent(0.050);
    setOutputVoltage(1.0);
    delay(1000);
    float measured_current_1 = getMeasuredCurrent();
    
    setOutputCurrent(0.1);
    setOutputVoltage(1.0);
    delay(1000);
    float measured_current_2 = getMeasuredCurrent();
    
    float slope = (measured_current_2-measured_current_1)/(.1-0.05);
    float x_i = 0.05-(measured_current_1/slope);
    
    currentLimitOffsetCal = -1.0*x_i;
    currentLimitSlopeCal = 1.0/slope;
    
    
}

void CircuitSnacksPowerSupply::Timer1_OverflowCallback(HardwareTimer* t)
{
    //digitalWrite(USER_LED_PIN, !digitalRead(USER_LED_PIN));
    const float FILTER_WEIGHT = 0.1;
    
    // measure voltage
    const float R_112 = 18.2e3;
    const float R_111 = 3.65e3;
    float measuredVoltage = analogRead(V_POSITIVE_OUT_DIV_PIN)/1024.0*VDD*(R_112+R_111)/R_111;
    measuredVoltageFiltered = (FILTER_WEIGHT)*measuredVoltage + (1-FILTER_WEIGHT)*measuredVoltageFiltered;
    
    // measure current
    // TO DO: This doesn't take into account offset created by R117 and R118
    const float INA_199_GAIN = 50.0;
    const float R_SENSE = 0.1;
    float measuredCurrent = (analogRead(V_CURRENT_AMPLIFIED_PIN)*VDD/1024)/(INA_199_GAIN*R_SENSE);
    measuredCurrentFiltered = (FILTER_WEIGHT)*measuredCurrent + (1-FILTER_WEIGHT)*measuredCurrentFiltered;

  //t->attachInterrupt(Timer1_OverflowCallback);// necessary?
}