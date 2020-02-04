#include <Arduino.h>
#include <Wire.h>
#include <U8g2lib.h>
#include "src/CircuitSnacksPowerSupply/CircuitSnacksPowerSupply.h"

#define DISPLAY_WIDTH 128
#define USER_LED_PIN PC13

// Incorrect labels in schematic - joystick is rotated from how symbol was drawn
#define BUTTON_UP_N_PIN PB15 //PB12 in schematic
#define BUTTON_DOWN_N_PIN PB13 //PB14 in schematic
#define BUTTON_CENTER_N_PIN PA8
#define BUTTON_RIGHT_N_PIN PB14 //PB15 in schematic
#define BUTTON_LEFT_N_PIN PB12 //PB13 in schematic

U8G2_SSD1306_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);

CircuitSnacksPowerSupply ps;

char string_buffer[64];

void updateDisplay(uint32_t voltagepoint_mV, uint32_t voltage_measured_mV);
void initStates();
void updateJoystick();

uint32_t voltageAdjust; 
uint32_t currentAdjust;
//
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


uint32_t boost_increment= 48;
uint32_t linear_increment= 31;
uint32_t current_increment = 5;

// Used for PWM DAC
//HardwareTimer 

void setup(){ 
  //Serial.begin(9600);
  
  pinMode(BUTTON_UP_N_PIN, INPUT_PULLUP);
  pinMode(BUTTON_DOWN_N_PIN, INPUT_PULLUP);
  pinMode(BUTTON_CENTER_N_PIN, INPUT_PULLUP);
  pinMode(BUTTON_LEFT_N_PIN, INPUT_PULLUP);
  pinMode(BUTTON_RIGHT_N_PIN, INPUT_PULLUP);

  initStates();
  u8g2.begin();
}

void loop(){
  updateDisplay(voltage, current, ps.getMeasuredCurrent());
  updateJoystick();
  ps.setOutputVoltage(voltage/1000.0);
  delay(100);
}

// Making a struct that contains these values and passing a pointer might be a better way to do this as we add more things that need to be drawn...
void updateDisplay(uint32_t voltagepoint_mV, uint32_t voltage_measured_mV, float current_measured){
  u8g2.clearBuffer();
  u8g2.setFont(u8g2_font_9x15_tf);
  u8g2.setFontRefHeightExtendedText();
  u8g2.setDrawColor(1);
  u8g2.setFontPosTop();
  u8g2.setFontDirection(0);

  // An example of how to center text, if desired.
  sprintf(string_buffer, "%d.%d", voltagepoint_mV / 1000, voltagepoint_mV % 1000); 
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2, 10, string_buffer);

  sprintf(string_buffer, "%d.%d", voltage_measured_mV / 1000, voltage_measured_mV % 1000); 
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2, 24, string_buffer);

  sprintf(string_buffer, "%d mA",(uint32_t) (current_measured*1000)); 
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2, 36, string_buffer);
  
  u8g2.sendBuffer();
}

void updateJoystick(){   
   up.curr = digitalRead(BUTTON_UP_N_PIN);
   if((up.prev == 1) && (up.curr == 0))
   {
    if(mode) current += currentAdjust;
    else voltage += voltageAdjust;
   }
   up.prev = up.curr;

  right.curr = digitalRead(BUTTON_RIGHT_N_PIN);
   if((right.prev == 1) && (right.curr == 0))
   {
    if(mode) currentAdjust /= 10;
    else voltageAdjust /= 10;
   }
   right.prev = right.curr;
   
   down.curr = digitalRead(BUTTON_DOWN_N_PIN);
   if((down.prev == 1) && (down.curr == 0))
   {
    if(mode) current -= currentAdjust;
    else voltage -= voltageAdjust;
   }
   down.prev = down.curr;

   left.curr = digitalRead(BUTTON_LEFT_N_PIN);
   if((left.prev == 1) && (left.curr == 0))
   {
    if(mode) currentAdjust *= 10;
    else voltageAdjust *= 10;
   }
   left.prev = left.curr;

   center.curr = digitalRead(BUTTON_CENTER_N_PIN);
   if((center.prev == 1) && (center.curr == 0))
   {
    mode = !mode;
   }
   center.prev = center.curr;
}


void initStates(){
  up = {1, 1};
  down = {1, 1};
  left = {1, 1};
  right = {1, 1};
  center = {1, 1};
  voltage = 10000;
  current = 200;
  voltageAdjust = 1000;
  currentAdjust = 100;
  mode = 0; // voltage mode 
}
