#include <Adafruit_GFX.h>    // Core graphics library
#include <Adafruit_ST7735.h> // Hardware-specific library for ST7735
#include <SPI.h>
#include <FreqMeasure.h>
#include <FreqCount.h>
#include "circuit_snacks_logo.h"

#define WS_0 6
#define WS_1 7
#define BUTTON 4

#define MODE_SQUARE 0
#define MODE_TRIANGLE 1
#define MODE_SINE 2

#define TFT_CS         2
#define TFT_RST        A5 
#define TFT_DC         3

Adafruit_ST7735 tft = Adafruit_ST7735(TFT_CS, TFT_DC, TFT_RST);


uint8_t mode = 0;
uint8_t last_button_state = 1;
uint8_t current_button_state = 1;

double count =0;
float frequency =0.0;
boolean isCount = true;

char str[6];

void setup(void) {
  Serial.begin(57600);
  init_pins();
  init_screen();
  tft.drawBitmap(25, 20, logo, logoWidth, logoHeight,ST77XX_CYAN);
  delay(2000);
  tft.fillScreen(ST77XX_BLACK);
  drawSquare(ST77XX_CYAN);
  FreqCount.begin(100);
}

void loop() {
  current_button_state = digitalRead(BUTTON);
  if((last_button_state == 1) && (current_button_state == 0))
  {
  
    switch(mode)
    {
      case MODE_SQUARE:
        // Switch to triangle waveform
        digitalWrite(WS_0, HIGH);
        digitalWrite(WS_1, LOW);
        mode = MODE_TRIANGLE;
        drawSquare(ST77XX_BLACK);
        drawTriangle(ST77XX_CYAN);
        break;
      case MODE_TRIANGLE:
        // Switch to sine waveform
        digitalWrite(WS_0, LOW);
        digitalWrite(WS_1, HIGH);
        mode = MODE_SINE;
        drawTriangle(ST77XX_BLACK);
        drawSine(ST77XX_CYAN);
        break;
      case MODE_SINE:
        // Switch to square waveform
        digitalWrite(WS_0, LOW);
        digitalWrite(WS_1, LOW);
        mode = MODE_SQUARE;
        drawSine(ST77XX_BLACK);
        drawSquare(ST77XX_CYAN);
        break;
    }
  }
  last_button_state = current_button_state;

   if (isCount){
    if (FreqCount.available()) {
      count = FreqCount.read();
      count *= 10;
      if(count < 1000){
        isCount = false;
        FreqCount.end();
        FreqMeasure.begin();
      }
      drawScreen(count);
    }
  }else{
     if (FreqMeasure.available()) {
        count = FreqMeasure.read();
        frequency = FreqMeasure.countToFrequency(count);
        if(frequency >= 1000){
          isCount = true;
          FreqMeasure.end();
          FreqCount.begin(100);
        }
        drawScreen(frequency);
    }
  }
}
void drawtext(char *text, uint16_t color, int xposition, int yposition) {
  tft.setCursor(xposition, yposition);
  tft.setTextColor(color, ST77XX_BLACK );
  tft.setTextWrap(true);
  tft.print(text);
}
void drawfreq(float num, uint16_t color, int xposition, int yposition) {
  tft.setCursor(xposition, yposition);
  tft.setTextColor(color, ST77XX_BLACK );
  tft.setTextWrap(true);
  tft.print(num);
}
void drawSine(uint16_t color){
    int y_offset = 90;
    for (int x = 0; x < 128; x+=2)  
    {
        float y = y_offset + 20.0 * sin((x*5.0 * 3.14) / 180.);
        tft.drawPixel(x, y, color);              //plot the new sinewave point
        tft.drawPixel(x + 1, y, color);              //plot the new sinewave point
        tft.drawPixel(x, y + 1, color);              //plot the new sinewave point
    }
}

void drawSquare(uint16_t color){
    int x = 0;
    int y = 70;
    int x_inc = 32;
    int y_inc = 40;
    tft.drawLine(x, y, x+x_inc, y, color);
    tft.drawLine(x+x_inc,y, x+x_inc, y+y_inc, color);
    tft.drawLine(x+x_inc,y+y_inc, x+2*x_inc, y+y_inc, color);
    tft.drawLine(x+2*x_inc,y+y_inc, x+2*x_inc, y, color);
    tft.drawLine(x+2*x_inc,y, x+3*x_inc, y, color);
    tft.drawLine(x+3*x_inc,y, x+3*x_inc, y+y_inc, color);
    tft.drawLine(x+3*x_inc,y+y_inc, x+4*x_inc, y+y_inc, color);
}

void drawTriangle(uint16_t color){
  int x = 0;
  int y = 70;
  int xincrement = 32;
  int amplitude = 40;
  for (int x = 0; x <= 128; x += xincrement * 2) {
    tft.drawLine(x, y, x + xincrement, y + amplitude, color);
    tft.drawLine(x + xincrement, y + amplitude, x + xincrement * 2, y, color);
  }
}

void drawScreen(double input){
    if(input >= 1000000.) {
      drawtext("MHz", ST77XX_WHITE, 85, 30);
      dtostrf(input / 1000000., 5, 2, str);
      drawtext(str, ST77XX_WHITE, 10, 30);
    }
    else if(input >= 1000.) {
      drawtext("KHz", ST77XX_WHITE, 85, 30);
      dtostrf(input / 1000., 5, 2, str );
      drawtext(str, ST77XX_WHITE, 10, 30);
    }
    else {
      drawtext("Hz ", ST77XX_WHITE, 85, 30);
      dtostrf(input, 5, 2, str);
      drawtext(str, ST77XX_WHITE, 10, 30);
  }
}

void init_pins(){
  pinMode(WS_0, OUTPUT);
  pinMode(WS_1, OUTPUT);
  digitalWrite(WS_0, LOW);
  digitalWrite(WS_1, LOW);
  
  pinMode(TFT_CS, OUTPUT);
  pinMode(TFT_DC, OUTPUT);
  pinMode(TFT_RST, OUTPUT);
  pinMode(MOSI, OUTPUT);
  pinMode(SCK, OUTPUT);
  
  pinMode(BUTTON, INPUT_PULLUP);

}

void init_screen(){
  tft.initR(INITR_144GREENTAB); // Init ST7735R chip, green tab
  tft.fillScreen(ST77XX_BLACK);
  tft.setRotation(1);
  tft.setTextSize(2);
}
