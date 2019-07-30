#include <Adafruit_GFX.h>    // Core graphics library
#include <Adafruit_ST7735.h> // Hardware-specific library for ST7735
#include <Adafruit_ST7789.h> // Hardware-specific library for ST7789
#include <SPI.h>
//#include <FreqCount.h>

#define WS_0 6
#define WS_1 7
#define BUTTON 4

#define MODE_SQUARE 0
#define MODE_TRIANGLE 1
#define MODE_SINE 2

#define TFT_CS         2
#define TFT_RST        A0 // Or set to -1 and connect to Arduino RESET pin
#define TFT_DC         3

Adafruit_ST7735 tft = Adafruit_ST7735(TFT_CS, TFT_DC, TFT_RST);


uint8_t mode;
uint8_t last_button_state;
uint8_t current_button_state;

void setup(void) {
  Serial.begin(57600);
  
  tft.initR(INITR_144GREENTAB); // Init ST7735R chip, green tab
  pinMode(WS_0, OUTPUT);
  pinMode(WS_1, OUTPUT);
  pinMode(BUTTON, INPUT_PULLUP);

  tft.setRotation(1);
  tft.fillScreen(ST77XX_BLACK);
  tft.setTextSize(3);
  drawtext("Square", ST77XX_WHITE);
  mode = MODE_SQUARE;
  last_button_state = digitalRead(BUTTON);
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
        tft.fillScreen(ST77XX_BLACK);
        drawtext("Triangle", ST77XX_WHITE);
        break;
      case MODE_TRIANGLE:
        // Switch to sine waveform
        digitalWrite(WS_0, LOW);
        digitalWrite(WS_1, HIGH);
        mode = MODE_SINE;
        tft.fillScreen(ST77XX_BLACK);
        drawtext("Sine", ST77XX_WHITE);
        break;
      case MODE_SINE:
        // Switch to square waveform
        digitalWrite(WS_0, LOW);
        digitalWrite(WS_1, LOW);
        mode = MODE_SQUARE;
        tft.fillScreen(ST77XX_BLACK);
        drawtext("Square", ST77XX_WHITE);
        break;
    }
  }
  last_button_state = current_button_state;
    delay(20);
}

void drawtext(char *text, uint16_t color) {
  tft.setCursor(0, 0);
  tft.setTextColor(color, ST77XX_BLACK );
  tft.setTextWrap(true);
  tft.print(text);
}

void drawfreq(char *text, uint16_t color) {
  tft.setCursor(0, 100);
  tft.setTextColor(color, ST77XX_BLACK );
  tft.setTextWrap(true);
  tft.print(text);
}
