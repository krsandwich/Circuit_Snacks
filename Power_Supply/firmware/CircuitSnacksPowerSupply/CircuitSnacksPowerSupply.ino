#include <Arduino.h>
#include <Wire.h>
#include <U8g2lib.h>
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

void updateDisplay(float voltage_setpoint, float current_setpoint, float current_measured, float voltage_measured);
void initStates();
void updateJoystick();
void updateMode();
void performCalibration();

float voltageAdjust; 
float currentAdjust;
//
float voltage;
float current;

uint8_t mode; // mode 0 = voltage, mode 1 = current
uint8_t output_mode; // mode 0 = voltage, mode 1 = current

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

  pinMode(USER_LED_PIN, OUTPUT);
  digitalWrite(USER_LED_PIN, HIGH);

  initStates();
  u8g2.begin();


  // for testing calibration code. Hold center button on reset to activate
  if(!digitalRead(BUTTON_CENTER_N_PIN))
  {
    performCalibration();
  }
}

void loop()
{
  updateDisplay(voltage, current, ps.getMeasuredCurrent(), ps.getMeasuredVoltage());
  updateJoystick();
  updateCursor();
  if(output_mode){
    ps.setOutputVoltage(voltage);
    ps.setOutputCurrent(current);
  }else{
    ps.setOutputVoltage(0);
    ps.setOutputCurrent(0);
  }
  delay(100);
}

// Making a struct that contains these values and passing a pointer might be a better way to do this as we add more things that need to be drawn...
void updateDisplay(float voltage_setpoint, float current_setpoint, float current_measured, float voltage_measured)
{
  u8g2.clearBuffer();
  u8g2.setFontRefHeightExtendedText();
  u8g2.setDrawColor(1);
  u8g2.setFontPosTop();
  u8g2.setFontDirection(0);

  // An example of how to center text, if desired.
  u8g2.setFont(u8g2_font_9x15_tf);
  
  u8g2.drawStr(15, 5, "Volt");
  u8g2.drawStr(DISPLAY_WIDTH/2 +5,5, " Curr");
  u8g2.drawLine(0, DISPLAY_HEIGHT/2+10, DISPLAY_WIDTH/2-11, DISPLAY_HEIGHT/2+10);
  u8g2.drawLine(DISPLAY_WIDTH/2+11, DISPLAY_HEIGHT/2+10, DISPLAY_WIDTH, DISPLAY_HEIGHT/2+10);
  
   sprintf(string_buffer, " %d.%.2d ", (uint32_t)voltage_measured, ((uint32_t)(voltage_measured * 100)) % 100); 
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer), 20, string_buffer);

    sprintf(string_buffer, "  %.3d ", (uint32_t)(current_measured*1000)); 
  u8g2.drawStr(DISPLAY_WIDTH/2, 20, string_buffer);

  u8g2.setFont(u8g2_font_7x14_tf);


  sprintf(string_buffer, "%d.%.2d V ",(uint32_t) (voltage_setpoint), ((uint32_t) (voltage_setpoint*100.0))%100); 
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer), 48, string_buffer);

  sprintf(string_buffer, "  %d mA",(uint32_t)(current_setpoint*1000)); 
  u8g2.drawStr(DISPLAY_WIDTH/2, 48, string_buffer);

   updateCursor();
   updateMode();
  
  u8g2.sendBuffer();
}

void updateJoystick()
{   
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
      if(mode && currentAdjust >.001){
        currentAdjust /= 10;
      }else if(!mode && voltageAdjust <=.01){
        mode = !mode;
        currentAdjust = 100;
      }else if(!mode && voltageAdjust > .01){
        voltageAdjust /= 10;
      }
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
      if(mode && currentAdjust < 100){
        currentAdjust *= 10;
      }else if(mode && currentAdjust < .1){
        mode = !mode;
        voltageAdjust = .01;
      }else if(!mode && voltageAdjust < 10){
        voltageAdjust *= 10;
      }
   }
   left.prev = left.curr;

   center.curr = digitalRead(BUTTON_CENTER_N_PIN);
   if((center.prev == 1) && (center.curr == 0))
   {
    output_mode = !output_mode;
   }
   center.prev = center.curr;
}



void initStates(){
  up = {1, 1};
  down = {1, 1};
  left = {1, 1};
  right = {1, 1};
  center = {1, 1};
  voltage = 10.0;
  current = 0.1;
  voltageAdjust = 1;
  currentAdjust = .1;
  mode = 0; // voltage mode 
  output_mode = 0; //off 
}

void updateCursor(){
  u8g2.setFont(u8g2_font_7x14_tf);
  if(mode){
        // 9 is width of character 
    if(abs(currentAdjust - .1) < .01) 
      u8g2.drawLine(DISPLAY_WIDTH/2 + 2*7,63, DISPLAY_WIDTH/2 + 3*7, 63); 
    else if(abs(currentAdjust - 0.01) < .001)
      u8g2.drawLine(DISPLAY_WIDTH/2 + 3*7, 63, DISPLAY_WIDTH/2 + 4*7, 63); 
    else if(abs(currentAdjust - 0.001) < .0001)
      u8g2.drawLine(DISPLAY_WIDTH/2 + 4*7, 63, DISPLAY_WIDTH/2 + 5*7, 63); 
    
  }
  else
  {
    // 9 is width of character 
    if(abs(voltageAdjust - 10) < .1)
      u8g2.drawLine(DISPLAY_WIDTH/2 - 8*7, 63, DISPLAY_WIDTH/2 - 7*7, 63);    
    else if(abs(voltageAdjust - 1) < .1) 
      u8g2.drawLine(DISPLAY_WIDTH/2 - 7*7, 63, DISPLAY_WIDTH/2 - 6*7, 63); 
    else if(abs(voltageAdjust - 0.1) < .01)
      u8g2.drawLine(DISPLAY_WIDTH/2 - 5*7, 63, DISPLAY_WIDTH/2 - 4*7, 63); 
    else if(abs(voltageAdjust - 0.01) < .001)
      u8g2.drawLine(DISPLAY_WIDTH/2 - 4*7, 63, DISPLAY_WIDTH/2 - 3*7, 63); 
    
  }
}

void updateMode(){
  u8g2.setFont(u8g2_font_7x14_tf);
  u8g2.setFontMode(0);
  u8g2.setDrawColor(2);
  if(output_mode){
    u8g2.drawStr(DISPLAY_WIDTH/2-(u8g2.getStrWidth("on")/2), DISPLAY_HEIGHT/2+2, "on");
  }else{
    u8g2.drawStr(DISPLAY_WIDTH/2-(u8g2.getStrWidth("off")/2), DISPLAY_HEIGHT/2+2,  "off");
  }
}

// must be called after the display is set up!
void performCalibration()
{
  u8g2.setFontRefHeightExtendedText();
  u8g2.setDrawColor(1);
  u8g2.setFontPosTop();
  u8g2.setFontDirection(0);

  u8g2.clearBuffer();
  u8g2.setFont(u8g2_font_7x14_tf);
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth("CALIBRATION MODE")/2, DISPLAY_HEIGHT/2-14/2, "CALIBRATION MODE");
  u8g2.sendBuffer();

  while(!digitalRead(BUTTON_CENTER_N_PIN)); // wait for button release
  delay(100); //debounce

  ps.startVoltageCal(); // start voltage calibration procedure

  float measured_voltage = 10.0;
  int cursor_position = 0;
  const int CURSOR_POSITION_MAX_VOLTS = 1;
  const int CURSOR_POSITION_MIN_VOLTS = -2;
  const float MEASURED_VOLTAGE_MAX = 20.0;
  const float MEASURED_VOLTAGE_MIN = 0.0;
  while(digitalRead(BUTTON_CENTER_N_PIN)) // press center button for next
  {
    // update the states of the joystick (except center)
    up.curr = digitalRead(BUTTON_UP_N_PIN);
    down.curr = digitalRead(BUTTON_DOWN_N_PIN);
    right.curr = digitalRead(BUTTON_RIGHT_N_PIN);
    left.curr = digitalRead(BUTTON_LEFT_N_PIN);

    // handle moving cursor left and right
    if(!left.curr && left.prev)
    {
      if (cursor_position < CURSOR_POSITION_MAX_VOLTS)
      {
        cursor_position++;
      }
    }
    if(!right.curr && right.prev)
    {
      if (cursor_position > CURSOR_POSITION_MIN_VOLTS)
      {
        cursor_position--;
      }
    }

    // handle incrementing and decrementing the digits
    if(!up.curr && up.prev)
    {
      switch(cursor_position)
      {
        case 1:
          if (measured_voltage + 10.0 <= MEASURED_VOLTAGE_MAX)
          {
            measured_voltage += 10.0;
          }
          break;  
        case 0:
          if (measured_voltage + 1.0 <= MEASURED_VOLTAGE_MAX)
          {
            measured_voltage += 1.0;
          }
          break;  
        case -1:
          if (measured_voltage + 0.1 <= MEASURED_VOLTAGE_MAX)
          {
            measured_voltage += 0.1;
          }
          break;  
        case -2:
          if (measured_voltage + 0.01 <= MEASURED_VOLTAGE_MAX)
          {
            measured_voltage += 0.01;
          }
          break;
      }
    }
    if(!down.curr && down.prev)
    {
      switch(cursor_position)
      {
        case 1:
          if (measured_voltage - 10.0 >= MEASURED_VOLTAGE_MIN)
          {
            measured_voltage -= 10.0;
          }
          break;  
        case 0:
          if (measured_voltage - 1.0 >= MEASURED_VOLTAGE_MIN)
          {
            measured_voltage -= 1.0;
          }
          break;  
        case -1:
          if (measured_voltage - 0.1 >= MEASURED_VOLTAGE_MIN)
          {
            measured_voltage -= 0.1;
          }
          break;  
        case -2:
          if (measured_voltage - 0.01 >= MEASURED_VOLTAGE_MIN)
          {
            measured_voltage -= 0.01;
          }
          break;
      }
    }

    // current states become previous states
    up.prev = up.curr;
    down.prev = down.curr;
    right.prev = right.curr;
    left.prev = left.curr;

    // update display
    u8g2.clearBuffer();
    u8g2.setFont(u8g2_font_7x14_tf);
    u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth("CALIBRATION MODE")/2, 2, "CALIBRATION MODE");
    u8g2.drawStr(10, 14, "Measure output");
    u8g2.drawStr(10, 26, "voltage:"); 
    sprintf(string_buffer, "%.2d.%.2d V ",(uint32_t) (measured_voltage), ((uint32_t) (measured_voltage*100.0))%100); 
    u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2, 48, string_buffer);
    if(cursor_position >= 0) //we're before the decimal point
    {
      u8g2.drawLine(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2+(CURSOR_POSITION_MAX_VOLTS-cursor_position)*7, 62, 
              DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2+(CURSOR_POSITION_MAX_VOLTS-cursor_position)*7+6, 62); 
    }
    else // we're after the decimal point
    {
      u8g2.drawLine(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2+(CURSOR_POSITION_MAX_VOLTS-cursor_position)*7+7, 62, 
              DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2+(CURSOR_POSITION_MAX_VOLTS-cursor_position)*7+7+6, 62); 
    }
    u8g2.sendBuffer();
  }

  // draw "Wait..."
  u8g2.clearBuffer();
  u8g2.setFont(u8g2_font_7x14_tf);
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth("CALIBRATION MODE")/2, 2, "CALIBRATION MODE");
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth("Wait...")/2, DISPLAY_HEIGHT/2-7, "Wait...");
  u8g2.sendBuffer();
  
  ps.finishVoltageCal(measured_voltage); // finish voltage cal with measured value

  ps.startCurrentCal(); // start current cal

  float measured_current = 0.1;
  cursor_position = 0;
  const int CURSOR_POSITION_MAX_CURRENT_MA = 2;
  const int CURSOR_POSITION_MIN_CURRENT_MA = 0;
  const float MEASURED_CURRENT_MAX = 0.2;
  const float MEASURED_CURRENT_MIN = 0.0;
  while(digitalRead(BUTTON_CENTER_N_PIN)) // press center button for next
  {
    // update the states of the joystick (except center)
    up.curr = digitalRead(BUTTON_UP_N_PIN);
    down.curr = digitalRead(BUTTON_DOWN_N_PIN);
    right.curr = digitalRead(BUTTON_RIGHT_N_PIN);
    left.curr = digitalRead(BUTTON_LEFT_N_PIN);

    // handle moving cursor left and right
    if(!left.curr && left.prev)
    {
      if (cursor_position < CURSOR_POSITION_MAX_CURRENT_MA)
      {
        cursor_position++;
      }
    }
    if(!right.curr && right.prev)
    {
      if (cursor_position > CURSOR_POSITION_MIN_CURRENT_MA)
      {
        cursor_position--;
      }
    }

    // handle incrementing and decrementing the digits
    if(!up.curr && up.prev)
    {
      switch(cursor_position)
      {
        case 2:
          if (measured_current + 0.1 <= MEASURED_CURRENT_MAX)
          {
            measured_current += 0.1;
          }
          break; 
        case 1:
          if (measured_current + 0.01 <= MEASURED_CURRENT_MAX)
          {
            measured_current += 0.01;
          }
          break;  
        case 0:
          if (measured_current + 0.001 <= MEASURED_CURRENT_MAX)
          {
            measured_current += 0.001;
          }
          break;  
      }
    }
    if(!down.curr && down.prev)
    {
      switch(cursor_position)
      {
        case 2:
          if (measured_current - 0.1 >= MEASURED_CURRENT_MIN)
          {
            measured_current -= 0.1;
          }
          break; 
        case 1:
          if (measured_current - 0.01 >= MEASURED_CURRENT_MIN)
          {
            measured_current -= 0.01;
          }
          break;  
        case 0:
          if (measured_current - 0.001 >= MEASURED_CURRENT_MIN)
          {
            measured_current -= 0.001;
          }
          break;  
      }
    }

    // current states become previous states
    up.prev = up.curr;
    down.prev = down.curr;
    right.prev = right.curr;
    left.prev = left.curr;

    // update display
    u8g2.clearBuffer();
    u8g2.setFont(u8g2_font_7x14_tf);
    u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth("CALIBRATION MODE")/2, 2, "CALIBRATION MODE");
    u8g2.drawStr(10, 14, "Measure output");
    u8g2.drawStr(10, 26, "shorted current:"); 
    sprintf(string_buffer, "%.3d mA ",(uint32_t) (measured_current*1000)); 
    u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2, 48, string_buffer);

    u8g2.drawLine(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2+(CURSOR_POSITION_MAX_CURRENT_MA-cursor_position)*7, 62, 
                  DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2+(CURSOR_POSITION_MAX_CURRENT_MA-cursor_position)*7+6, 62); 
    
    u8g2.sendBuffer();
  }

  // draw "Wait..."
  u8g2.clearBuffer();
  u8g2.setFont(u8g2_font_7x14_tf);
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth("CALIBRATION MODE")/2, 2, "CALIBRATION MODE");
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth("Wait...")/2, DISPLAY_HEIGHT/2-7, "Wait...");
  u8g2.sendBuffer();
  
  ps.finishCurrentCal(measured_current); // finish current cal with measured value (saves to NVM)
}
