#include <Arduino.h>
#include <Wire.h>
#include <U8g2lib.h>
#include "CircuitSnacksPowerSupply/CircuitSnacksPowerSupply.h"

#define DISPLAY_WIDTH 128
#define USER_LED_PIN PC13

// Incorrect labels in schematic - joystick is rotated from how symbol was drawn
#define BUTTON_UP_N_PIN PB15 //PB12 in schematic
#define BUTTON_DOWN_N_PIN PB13 //PB14 in schematic
#define BUTTON_CENTER_N_PIN PA8
#define BUTTON_RIGHT_N_PIN PB14 //PB15 in schematic
#define BUTTON_LEFT_N_PIN PB12 //PB13 in schematic


U8G2_SSD1306_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);

CircuitSnacksPowerSupply ps();

char string_buffer[64];

void updateDisplay(uint32_t voltage_setpoint_mV, uint32_t voltage_measured_mV);

void setup() 
{ 
  pinMode(BUTTON_UP_N_PIN, INPUT_PULLUP);
  pinMode(BUTTON_DOWN_N_PIN, INPUT_PULLUP);
  pinMode(BUTTON_CENTER_N_PIN, INPUT_PULLUP);
  pinMode(BUTTON_LEFT_N_PIN, INPUT_PULLUP);
  pinMode(BUTTON_RIGHT_N_PIN, INPUT_PULLUP);

  u8g2.begin();
}

void loop() 
{
  updateDisplay(1234, 2345);
  delay(100);
}

// Making a struct that contains these values and passing a pointer might be a better way to do this as we add more things that need to be drawn...
void updateDisplay(uint32_t voltage_setpoint_mV, uint32_t voltage_measured_mV)
{
  u8g2.clearBuffer();
  u8g2.setFont(u8g2_font_9x15_tf);
  u8g2.setFontRefHeightExtendedText();
  u8g2.setDrawColor(1);
  u8g2.setFontPosTop();
  u8g2.setFontDirection(0);

  // An example of how to center text, if desired.
  sprintf(string_buffer, "%d.%d", voltage_setpoint_mV % 1000, voltage_setpoint_mV / 1000); 
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2, 10, string_buffer);

  sprintf(string_buffer, "%d.%d", voltage_measured_mV % 1000, voltage_measured_mV / 1000); 
  u8g2.drawStr(DISPLAY_WIDTH/2-u8g2.getStrWidth(string_buffer)/2, 30, string_buffer);
  
  u8g2.sendBuffer();
}

