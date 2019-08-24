#include <Arduino.h>
#include <U8x8lib.h>

#define VOLTAGE_READ_PIN 19
#define CURRENT_READ_PIN 20
#define UP 3
#define DOWN 1
#define CENTER 6
#define RIGHT 2

uint8_t up_state_prev = 1;
uint8_t up_state_curr = 1;

uint8_t down_state_prev = 1;
uint8_t down_state_curr = 1;

uint8_t center_state_prev = 1;
uint8_t center_state_curr = 1;

uint8_t right_state_prev = 1;
uint8_t right_state_curr = 1;

uint8_t digit_voltage_adjust_state = 0;
uint8_t digit_current_adjust_state = 0;

uint16_t voltage_adjust = 1000;
uint8_t current_adjust = 100;

uint8_t mode = 0;



uint32_t voltage_set =5000;
uint32_t current_set = 100;

uint32_t boost_increment= 53;
uint32_t linear_increment= 31;
uint32_t linear_divider= 0;

uint32_t voltage_read = 0;
uint32_t current_read = 0;


U8X8_SSD1306_128X64_NONAME_HW_I2C u8x8(/* reset=*/ U8X8_PIN_NONE);

char buf[10];
void setup() {
 // put your setup code here, to run once:

   pinMode(0, INPUT); //Hardware I2C doesn't work without calling pinmode - I have no idea why! Can even be on a pin that doesn't do anything, as shown.
   pinMode(UP, INPUT_PULLUP);
   pinMode(DOWN, INPUT_PULLUP);
   pinMode(CENTER, INPUT_PULLUP);
   pinMode(RIGHT, INPUT_PULLUP);
   pinMode(7, OUTPUT); //COMMON of joystick 
   digitalWrite(7,0); //COMMON of joystick 
   
   u8x8.begin();

   analogWrite(18,1024); // pin 18 is DAC  //- (voltage_set%1000 * 50)
   analogWrite(14, 0);
   analogWrite(15, 1023);

}

void loop() {
  down_state_curr = digitalRead(DOWN);
   if((down_state_prev == 1) && (down_state_curr == 0) && voltage_set > 0)
   {
     if(mode){
        current_set -= current_adjust;
     }else{
        voltage_set -= voltage_adjust;
     }
   }
   down_state_prev = down_state_curr;

  up_state_curr = digitalRead(UP);
   if((up_state_prev == 1) && (up_state_curr == 0) && voltage_set < 10000)
   {
     if(mode){
        current_set += current_adjust;
     }else{
        voltage_set += voltage_adjust;
     }
   }
   up_state_prev = up_state_curr;
   
   center_state_curr = digitalRead(CENTER);
   if((center_state_prev == 1) && (center_state_curr == 0))
   {
     mode = mode ? 0 : 1;
   }
   center_state_prev = center_state_curr;

   right_state_curr = digitalRead(RIGHT);
   if((right_state_prev == 1) && (right_state_curr == 0))
   {
     if(mode){
      digit_current_adjust_state = (digit_current_adjust_state + 1)%3;
      current_adjust = (current_adjust == 1) ? 100 : (current_adjust/10);
     }else { 
      digit_voltage_adjust_state = (digit_voltage_adjust_state + 1)%3;
      voltage_adjust = (voltage_adjust == 10) ? 1000 : (voltage_adjust/10);
     }
   }
   right_state_prev = right_state_curr;


   if(voltage_set >= 5000) analogWrite(18,(1023 - (voltage_set*boost_increment/1000) - 53));
   else analogWrite(18,1023);
   linear_divider = voltage_set * linear_increment* 100 /(10000 + 23200);
   analogWrite(14, linear_divider); 



 // put your main code here, to run repeatedly:

   delay(50);

   u8x8.setFont(u8x8_font_5x8_r);

   drawIntendedVoltage();
   drawIntendedCurrent();
   drawActualVoltage();
   drawActualCurrent();

}

void drawIntendedVoltage(){
  
     uint16_t mod_adj = 10000;
     uint16_t div_adj = 1000;
     u8x8.drawString(1, 30, ".");
     for (int i = 0; i < 3; i++){
        itoa(((voltage_set%mod_adj)/div_adj), buf, 10);
        if (digit_voltage_adjust_state == i && mode == 0) u8x8.setInverseFont(1);
        if(i== 0) u8x8.drawString(0, 30, buf);
        else u8x8.drawString(1 + i, 30, buf);
        mod_adj /= 10;
        div_adj /= 10;
        u8x8.setInverseFont(0);
     }
     u8x8.drawString(4, 30, "V");
}


void drawIntendedCurrent(){
  
     uint16_t mod_adj = 1000;
     uint16_t div_adj = 100;
     for (int i = 0; i < 3; i++){
        itoa(((current_set%mod_adj)/div_adj), buf, 10);
        if (digit_current_adjust_state == i && mode == 1) u8x8.setInverseFont(1);
        u8x8.drawString(10 + i, 30, buf);
        mod_adj /= 10;
        div_adj /= 10;
        u8x8.setInverseFont(0);
     }
     u8x8.drawString(14, 30, "mA");
}

void drawActualVoltage(){
   u8x8.setFont(u8x8_font_5x8_r);
   voltage_read = analogRead(VOLTAGE_READ_PIN);
   voltage_read = voltage_read * 3300 * (1796+511) / 511 / 1024;
   uint16_t mod_adj = 10000;
   uint16_t div_adj = 1000;
   u8x8.draw2x2String(2, 0, ".");
     for (int i = 0; i < 3; i++){
        itoa(((voltage_read%mod_adj)/div_adj), buf, 10);
        if(i== 0) u8x8.draw2x2String(0, 0, buf);
        else u8x8.draw2x2String(2 + 2* i, 0, buf);
        mod_adj /= 10;
        div_adj /= 10;
     }
   u8x8.draw2x2String(10, 0, "V");
//   itoa(voltage_read, buf, 10);
//   u8x8.draw2x2String(0, 0, buf);
}
void drawActualCurrent(){
   current_read = analogRead(CURRENT_READ_PIN);
   //need math

   itoa(current_read, buf, 10);
   u8x8.draw2x2String(0, 19, buf);
   u8x8.draw2x2String(10, 19, "mA");
//   itoa(voltage_read, buf, 10);
//   u8x8.draw2x2String(0, 0, buf);
}
