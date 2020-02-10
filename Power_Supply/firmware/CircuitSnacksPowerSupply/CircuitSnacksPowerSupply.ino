#include <Arduino.h>
#include <Wire.h>
#include <U8g2lib.h>
#include <float.h>
#include "src/CircuitSnacksPowerSupply/CircuitSnacksPowerSupply.h"

#define DISPLAY_WIDTH 128
#define DISPLAY_HEIGHT 64

// Incorrect labels in schematic - joystick is rotated from how symbol was drawn
#define BUTTON_UP_N_PIN PB15 //PB12 in schematic
#define BUTTON_DOWN_N_PIN PB13 //PB14 in schematic
#define BUTTON_CENTER_N_PIN PA8
#define BUTTON_RIGHT_N_PIN PB14 //PB15 in schematic
#define BUTTON_LEFT_N_PIN PB12 //PB13 in schematic

U8G2_SSD1306_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);

CircuitSnacksPowerSupply ps;

char string_buffer[64];

void updateDisplay(float voltagepoint_mV, float currentpoint_mV, float current_measured, float voltage_measured);
void initStates();
void updateJoystick();
void updateCursor();

float voltageAdjust; 
float currentAdjust;
//
float voltage;
float current;

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
  const float CURRENT_OFFSET_CAL = -0.023;
  updateDisplay(voltage, current, ps.getMeasuredCurrent() + CURRENT_OFFSET_CAL, ps.getMeasuredVoltage());
  updateJoystick();
  ps.setOutputVoltage(voltage);
  delay(100);
}

// Making a struct that contains these values and passing a pointer might be a better way to do this as we add more things that need to be drawn...
void updateDisplay(float voltagepoint_mV, float currentpoint_mV, float current_measured, float voltage_measured){
  u8g2.clearBuffer();
  u8g2.setFontRefHeightExtendedText();
  u8g2.setDrawColor(1);
  u8g2.setFontPosTop();
  u8g2.setFontDirection(0);

  u8g2.setFont(u8g2_font_9x15_tf);
  
  u8g2.drawStr(15, 5, "Volt");
  u8g2.drawStr(DISPLAY_WIDTH/2 +5,5, " Curr");
  u8g2.drawLine(DISPLAY_WIDTH/2, 0, DISPLAY_WIDTH/2, DISPLAY_HEIGHT);
  
  // An example of how to center text, if desired.
  sprintf(string_buffer, "%d.%.2d ", (uint32_t)voltagepoint_mV, ((uint32_t)(voltagepoint_mV * 100)) % 100); 
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer), 20, string_buffer);

  //current wtf 
  sprintf(string_buffer, " .%.3d ", ((uint32_t)(currentpoint_mV * 1000)) % 1000); 
  u8g2.drawStr(DISPLAY_WIDTH/2, 20, string_buffer);

  u8g2.setFont(u8g2_font_7x14_tf);

  sprintf(string_buffer, "%d.%.2d V ",(uint32_t) (voltage_measured), ((uint32_t) (voltage_measured*100.0))%100); 
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer), 48, string_buffer);

  sprintf(string_buffer, "  %d mA",(uint32_t) (current_measured*1000)); 
  u8g2.drawStr(DISPLAY_WIDTH/2, 48, string_buffer);


  updateCursor();
  
  u8g2.sendBuffer();
}

void updateJoystick(){   
   up.curr = digitalRead(BUTTON_UP_N_PIN);
   if((up.prev == 1) && (up.curr == 0))
   {
    if(mode && (current + currentAdjust) < .250) current += currentAdjust;
    else if (!mode && (voltage + voltageAdjust) <20) voltage += voltageAdjust;
   }
   up.prev = up.curr;

  right.curr = digitalRead(BUTTON_RIGHT_N_PIN);
   if((right.prev == 1) && (right.curr == 0))
   {
    if(mode && currentAdjust >.001) currentAdjust /= 10;
    else if(!mode && voltageAdjust > .01) voltageAdjust /= 10;
   }
   right.prev = right.curr;
   
   down.curr = digitalRead(BUTTON_DOWN_N_PIN);
   if((down.prev == 1) && (down.curr == 0))
   {
    if(mode && (current - currentAdjust) > .001) current -= currentAdjust;
    else if (!mode && (voltage - voltageAdjust) > 0.01) voltage -= voltageAdjust;
   }
   down.prev = down.curr;

   left.curr = digitalRead(BUTTON_LEFT_N_PIN);
   if((left.prev == 1) && (left.curr == 0))
   {
    if(mode && currentAdjust < .1) currentAdjust *= 10;
    else if(!mode && voltageAdjust < 1) voltageAdjust *= 10;
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
  voltage = 10.45;
  current = .2;
  voltageAdjust = 1;
  currentAdjust = .1;
  mode = 0; // voltage mode 
}

void updateCursor(){
  if(mode){
        // 9 is width of character 
    if(abs(currentAdjust - .1) < .01) 
      u8g2.drawLine(DISPLAY_WIDTH/2 + 9, 35, DISPLAY_WIDTH/2 + 2*9, 35); 
    else if(abs(currentAdjust - 0.01) < .001)
      u8g2.drawLine(DISPLAY_WIDTH/2 + 2*9, 35, DISPLAY_WIDTH/2 + 3*9, 35); 
    else if(abs(currentAdjust - 0.001) < .0001)
      u8g2.drawLine(DISPLAY_WIDTH/2 + 3*9, 35, DISPLAY_WIDTH/2 + 4*9, 35); 
    
  } else{
    // 9 is width of character 
    if(abs(voltageAdjust - 1) < .1) 
      u8g2.drawLine(DISPLAY_WIDTH/2 - 5*9, 35, DISPLAY_WIDTH/2 - 4*9, 35); 
    else if(abs(voltageAdjust - 0.1) < .01)
      u8g2.drawLine(DISPLAY_WIDTH/2 - 3*9, 35, DISPLAY_WIDTH/2 - 2*9, 35); 
    else if(abs(voltageAdjust - 0.01) < .001)
      u8g2.drawLine(DISPLAY_WIDTH/2 - 2*9, 35, DISPLAY_WIDTH/2 - 9, 35); 
       
    
  }
}
