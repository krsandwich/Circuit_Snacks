#include "Arduino.h"

/*
 * Driver for the Circuit Snacks Power Supply hardware.
 * Anything that deals with hardware details other than the joystick should go here.
 */

#define USER_LED_PIN PC13

#define V_BOOST_CTRL_PWM_PIN PA1 // Timer 2.2
#define V_BOOST_CTRL_PWM_CHANNEL 2
#define V_CURR_LIM_PWM_PIN PA2 // Timer 2.3
#define V_CURR_LIM_PWM_CHANNEL 3
#define V_LIN_CTRL_PWM_PIN PA3 // Timer 2.4
#define V_LIN_CTRL_PWM_CHANNEL 4


#define V_CURRENT_AMPLIFIED_PIN PB0 // PA0
#define V_POSITIVE_OUT_DIV_PIN PA6

#define ANALOG_READ_MAX 1024

const uint32_t FILTER_LENGTH = 11;

class CircuitSnacksPowerSupply 
{
    public:
        CircuitSnacksPowerSupply();
        
        float getMeasuredVoltage();
        float getMeasuredCurrent();
        void setOutputVoltage(float Vout);
        void setOutputCurrent(float Iout);
        
        void startVoltageCal();
        void finishVoltageCal(float measured_volts);
        void startCurrentCal();
        void finishCurrentCal(float measured_amps);

        uint32_t voltageAdjust; 
        uint32_t currentAdjust;

        uint32_t voltage;
        uint32_t current;
        
    private:
        static void Timer1_OverflowCallback(HardwareTimer* t);
        
        uint16_t measuredVoltageRawCircularBuffer[FILTER_LENGTH];
        uint16_t measuredCurrentRawCircularBuffer[FILTER_LENGTH];
        uint32_t measuredVoltageRawCircularBufferIndex;
        uint32_t measuredCurrentRawCircularBufferIndex;
        
        static float measuredVoltageFiltered;
        static float measuredCurrentFiltered;
        
        float voltageReadbackSlopeCal;
        float voltageSetSlopeCal;
        
        float currentReadbackOffsetCal;
        float currentReadbackSlopeCal;
        float currentLimitOffsetCal;
        float currentLimitSlopeCal;
        
        // User for generating interrupt to measure voltage/current
        HardwareTimer *Timer1;
        
        // Used for PWM DAC generation
        HardwareTimer *Timer2;

    
};
