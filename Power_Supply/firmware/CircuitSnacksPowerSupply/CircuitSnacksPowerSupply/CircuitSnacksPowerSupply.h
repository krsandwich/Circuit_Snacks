#include "Arduino.h"

/*
 * Driver for the Circuit Snacks Power Supply hardware.
 * Anything that deals with hardware details other than the joystick should go here.
 */


#define V_BOOST_CTRL_PWM_PIN PA1
#define V_CURR_LIM_PWM_PIN PA2
#define V_LIN_CTRL_PWM_PIN PA3

#define V_CURRENT_AMPLIFIED_PIN PA0
#define V_POSITIVE_OUT_DIV_PIN PA6

#define VDD 3300
#define CURRENT_MAX 500
#define CURRENT_SENSE_AMP_GAIN 50
#define CURRENT_SENSE_R_CONDUCTANCE 10
#define V_POSITIVE_OUT_SCALE_FACTOR_X1000 (1000*(3600+18200)/(3600))

#define ANALOG_READ_MAX 1024

const uint32_t FILTER_LENGTH = 11;

class CircuitSnacksPowerSupply 
{
    public:
        CircuitSnacksPowerSupply();
        
        uint32_t getMeasuredVoltage();
        uint32_t getMeasuredCurrent();
        void setOutputVoltage(uint32_t millivolts);
        void setOutputCurrent(uint32_t milliamps);
        
        void startVoltageCal();
        void finishVoltageCal(uint32_t measured_millivolts);
        void performMeasuredCurrentCal(uint32_t measured_milliohms);

        uint32_t voltageAdjust; 
        uint32_t currentAdjust;

        uint32_t voltage;
        uint32_t current;

        uint8_t mode; // mode 0 = voltage, mode 1 = current

        struct joystick {
            uint8_t prev;
            uint8_t curr;
        };

        joystick up;
        joystick down;
        joystick left;
        joystick right;
        joystick center;
        
    private:
        uint16_t measuredVoltageRawCircularBuffer[FILTER_LENGTH];
        uint16_t measuredCurrentRawCircularBuffer[FILTER_LENGTH];
        uint32_t measuredVoltageRawCircularBufferIndex;
        uint32_t measuredCurrentRawCircularBufferIndex;

    
};
