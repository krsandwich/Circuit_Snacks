#include "CircuitSnacksPowerSupply.h"
#include "Arduino.h"

const float VDD = 3.3;

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

// Returns the measured voltage (after applying median filter and 
// calibration correction) in mV based on the 
// raw ADC values in the circular buffer.
uint32_t CircuitSnacksPowerSupply::getMeasuredVoltage()
{
    return 0;
}

// Returns the measured current (after applying median filter and 
// calibration correction) in mA based on the 
// raw ADC values in the circular buffer.
float CircuitSnacksPowerSupply::getMeasuredCurrent()
{
    const float CURRENT_SENSE_AMP_GAIN = 50;
    const float CURRENT_SENSE_RESISTOR = 0.1;
    const float CURRENT_SENSE_OFFSET_RESISTOR1 = 100;
    const float CURRENT_SENSE_OFFSET_RESISTOR2 = 130e3;
    
    float v_meas = VDD*analogRead(V_CURRENT_AMPLIFIED_PIN)/ANALOG_READ_MAX;
    float v_offset = CURRENT_SENSE_AMP_GAIN*VDD*CURRENT_SENSE_OFFSET_RESISTOR1/(CURRENT_SENSE_OFFSET_RESISTOR1+CURRENT_SENSE_OFFSET_RESISTOR2);
    
    return (v_meas-v_offset)/(CURRENT_SENSE_RESISTOR*CURRENT_SENSE_AMP_GAIN);
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
void CircuitSnacksPowerSupply::setOutputCurrent(uint32_t milliamps)
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