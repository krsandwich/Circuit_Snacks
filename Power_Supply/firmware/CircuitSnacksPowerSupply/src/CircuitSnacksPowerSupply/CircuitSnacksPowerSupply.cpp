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
    measuredVoltageRawCircularBufferIndex = 0;
    measuredCurrentRawCircularBufferIndex = 0;
    
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
    
    
}

// Returns the filtered measured voltage
float CircuitSnacksPowerSupply::getMeasuredVoltage()
{
    return measuredVoltageFiltered;
}

// Returns the filtered measured current
float CircuitSnacksPowerSupply::getMeasuredCurrent()
{   
    return measuredCurrentFiltered;
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
    float Vc = V_FB+R_C*(V_FB-(Vout+V_DROPOUT))/R_OUT+R_C*V_FB/R_GND;
    uint32_t value = (uint32_t) (Vc/VDD*1024);
    Timer2->setCaptureCompare(V_BOOST_CTRL_PWM_CHANNEL, value, TICK_COMPARE_FORMAT);
    
    
    // set the linear regulator voltage to Vout
    const float R_116 = 5.76e3;
    const float R_115 = 1e3;
    
    Vc = Vout*R_115/(R_115+R_116);
    value = (uint32_t) (Vc/VDD*1024);
    Timer2->setCaptureCompare(V_LIN_CTRL_PWM_CHANNEL, value, TICK_COMPARE_FORMAT);
}

// Sets the DACs for the output current limit using the calibration values, if present
void CircuitSnacksPowerSupply::setOutputCurrent(float Iout)
{
    
}

// Start doing voltage calibration. Sets output to what we expect to be 10V 
// without any calibration correction and disables current limit.
void CircuitSnacksPowerSupply::startVoltageCal()
{
    
}

// Finish doing voltage calibration. Takes the value the user has measured,
// and uses it to calculate slope correction factors for setting the output
// voltage as well as the output voltage readback. Offset error is assumed
// to be zero. Saves this correction factor to non-volatile memory.
void CircuitSnacksPowerSupply::finishVoltageCal(uint32_t measured_millivolts)
{

}

// Perform current readback calibration, assuming voltage calibration has been performed
// and a resistor of measured_milliohms is connected across the output. Measure
// output current for two different output voltages to caculate offset and slope
// correction factors for current readback. Saves these correction factors to 
// non-volatile memory.
void CircuitSnacksPowerSupply::performMeasuredCurrentCal(uint32_t measured_milliohms)
{

}

// Perform current limit calibration, assuming current measurement calibration has
// been performed and a short is connected across the output. Measures current
// for two different current limit setpoints and calculates offset and slope error
// correction factors. Saves these correction factors to non-volatile memory.
void CircuitSnacksPowerSupply::performCurrentLimitCal()
{

}

void CircuitSnacksPowerSupply::Timer1_OverflowCallback(HardwareTimer* t)
{
    digitalWrite(USER_LED_PIN, !digitalRead(USER_LED_PIN));
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