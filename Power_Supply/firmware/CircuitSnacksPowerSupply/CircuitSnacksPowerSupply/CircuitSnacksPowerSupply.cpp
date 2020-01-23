#include "CircuitSnacksPowerSupply.h"
#include "Arduino.h"


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
    
    pinMode(V_BOOST_CTRL_PWM, OUTPUT); digitalWrite(V_BOOST_CTRL_PWM, HIGH);
    pinMode(V_CURR_LIM_PWM, OUTPUT); digitalWrite(V_CURR_LIM_PWM, HIGH);
    pinMode(V_LIN_CTRL_PWM, OUTPUT); digitalWrite(V_LIN_CTRL_PWM, LOW);
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
uint32_t CircuitSnacksPowerSupply::getMeasuredCurrent()
{
    return 0;
}

// Sets the DACs for the output voltage using the calibration values, if present
void CircuitSnacksPowerSupply::setOutputVoltage(uint32_t millivolts)
{

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