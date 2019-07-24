#include <SPI.h>
#include <TFT.h>


#define WS_0 6
#define WS_1 7
#define BUTTON 4

#define MODE_SQUARE 0
#define MODE_TRIANGLE 1
#define MODE_SINE 2
#define cs 2
#define dc 3
#define rst A0

TFT TFTscreen = TFT(cs,dc,rst);

uint8_t mode;
uint8_t last_button_state;
uint8_t current_button_state;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  TFTscreen.begin();
  TFTscreen.background(0, 255, 0);
  TFTscreen.stroke(0, 0, 0);
  TFTscreen.setTextSize(2);
  pinMode(WS_0, OUTPUT);
  pinMode(WS_1, OUTPUT);
  pinMode(BUTTON, INPUT_PULLUP);
  TFTscreen.text("square", 10, 10);
  mode = MODE_SQUARE;
  last_button_state = digitalRead(BUTTON);
}

void loop() 
{
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
        TFTscreen.background(0, 255, 0);
        TFTscreen.text("triangle", 10, 10);
        break;
      case MODE_TRIANGLE:
        // Switch to sine waveform
        digitalWrite(WS_0, LOW);
        digitalWrite(WS_1, HIGH);
        mode = MODE_SINE;
        TFTscreen.background(0, 255, 0);
        TFTscreen.text("sine", 10, 10);
        break;
      case MODE_SINE:
        // Switch to square waveform
        digitalWrite(WS_0, LOW);
        digitalWrite(WS_1, LOW);
        mode = MODE_SQUARE;
        TFTscreen.background(0, 255, 0);
        TFTscreen.text("square", 10, 10);
        break;
    }
  }
  last_button_state = current_button_state;
  delay(20);
}
