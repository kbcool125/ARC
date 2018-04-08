#include "SoftwareSerial.h"
#include "DFRobotDFPlayerMini.h"
#include "Adafruit_NeoPixel.h"
#ifdef __AVR__
  #include "avr/power.h"
#endif

const byte mp3playerPins[] = {12, 11}; // 12->RX, 11->TX
const byte irPin = A0;
const byte numLeds = 5;
const byte ledPins[] = {4, 5, 6, 7, 8};
const byte neopixelPin = 9;
const byte neopixelNum = 16;
const byte playerVolume = 20;
const byte alignEyes = 0;

int irVal;
int totalNumMp3s;
int randomNumber1;
int randomNumber2;
int upgradeSucessfullMp3 = 1;
int upgradeFailedMp3 = 2;

static unsigned long ledWaitingTimer = 2000;
static unsigned long testingTimer = 3000;
static unsigned long sucessTimer = 3000;
static unsigned long failTimer = 3000;

int playerTimeout = 500;
byte animation1Counter = 0;
byte animation2Counter = 0;
byte animation3Counter = 0;
byte litPixel = 0;
byte eyesColour[] = {0, 0, 255};
byte fadeColour1[] = {0, 0, 255};
byte fadeColour2[] = {128, 0, 255};

SoftwareSerial mySoftwareSerial(mp3playerPins[0], mp3playerPins[1]);
Adafruit_NeoPixel pixels = Adafruit_NeoPixel(neopixelNum, neopixelPin, NEO_GRB + NEO_KHZ800);
DFRobotDFPlayerMini myDFPlayer;

void gentlePulseLeds(byte pwmVal){
  int randomState = random(0, 9);
  if (randomState >= 8){
    digitalWrite(ledPins[0], HIGH);
  } else if (randomState < 8){
    digitalWrite(ledPins[0], LOW);
  }
  analogWrite(ledPins[1], pwmVal);
  analogWrite(ledPins[2], pwmVal);
}

void flashLedsRandomly(){
  int randomLed = random(0, 5);
  int randomState = random(0, 2);
  if (randomState == 1)
    digitalWrite(ledPins[randomLed], HIGH);
  else if (randomState == 0)
    digitalWrite(ledPins[randomLed], LOW);
}

void ledsAllOn(){
  for(int i=0; i<numLeds; i++){
    digitalWrite(ledPins[i], HIGH);
  }   
}

void ledsAllOff(){
  for(int i=0; i<numLeds; i++){
    digitalWrite(ledPins[i], LOW);
  } 
}

void alignNeopixelEyes(){
  // Right Eye Pixel 0
  pixels.setPixelColor(0, pixels.Color(230,0,0));
  // Left Eye Pixel 0 - pixel 8 in the chain
  pixels.setPixelColor(8, pixels.Color(0,0,230));
  pixels.show(); 
}

void testNeopixelEyes(){
   // Right Eye
  for(int i=0; i<(neopixelNum/2); i++){
    pixels.setPixelColor(i, pixels.Color(230,0,0));
    pixels.show();
    delay(1000);
  }
  pixels.show();
  for(int i=8; i<neopixelNum; i++){
    pixels.setPixelColor(i, pixels.Color(0,0,230));
    pixels.show();
    delay(1000);
  }
  eyesOff();
  delay(1000);
}

void setEyesColour(byte r, byte g, byte b){
  eyesColour[0] = r;
  eyesColour[1] = g;
  eyesColour[2] = b; 
}

void eyesSolidColour(){
  for(int i=0; i<neopixelNum; i++){
    pixels.setPixelColor(i, pixels.Color(eyesColour[0],eyesColour[1],eyesColour[2]));
  } 
  pixels.show();
}

void eyesOff(){
  for (int i=0; i<neopixelNum; i++){
    pixels.setPixelColor(i, pixels.Color(0,0,0));
  } 
  pixels.show();
}

void eyesAnimation1(int delayVal, boolean stayOn){
  if (animation1Counter == neopixelNum/2){
     animation1Counter = 0;
  }
  pixels.setPixelColor(animation1Counter, pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
  pixels.setPixelColor(animation1Counter+(neopixelNum/2), pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
  pixels.show();
  delay(delayVal);
  if (!stayOn){
    if (animation1Counter == neopixelNum/2 -1){
      eyesOff();
    }
  }
  animation1Counter++;
}

void eyesAnimation2(int delayVal){
  if (animation2Counter == neopixelNum/2){
     animation2Counter = 0;
  }
  pixels.setPixelColor(animation2Counter, pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
  pixels.setPixelColor(animation2Counter+(neopixelNum/2), pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
  pixels.show();
  delay(delayVal);
  eyesOff();
  delay(delayVal);
  animation2Counter++;
}

void eyesAnimation3(int delayVal, byte nLitPixels){
  eyesOff();
  if (animation3Counter == neopixelNum/2){
     animation3Counter = 0;
  }
  for (byte i=0; i<nLitPixels; i++){
    litPixel = animation3Counter + i;
    if (litPixel >= (neopixelNum/2)){
      litPixel = (animation3Counter - (neopixelNum/2)) + i;
    }
    pixels.setPixelColor((litPixel), pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
    pixels.setPixelColor((litPixel+(neopixelNum/2)), pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
    flashLedsRandomly();
  }
  pixels.show();
  unsigned long anim3T0 = millis();
  while ((millis()-anim3T0) < delayVal){
    if ((millis()-anim3T0) > delayVal){
      return; 
    }
  }
  animation3Counter++;
}

void eyesAnimation4(int delayVal){
  setEyesColour(fadeColour1[0],fadeColour1[1],fadeColour1[2]);
  eyesSolidColour();
  for (byte i=0; i<fadeColour2[0]; i++){
    irVal = analogRead(irPin);
    if (irVal >= 250){
      return;
    }
    gentlePulseLeds(fadeColour1[0]+i);
    setEyesColour(fadeColour1[0]+i, fadeColour1[1], fadeColour1[2]);
    eyesSolidColour();
    delay(delayVal);
  }
  for (byte i=0; i<fadeColour2[0]; i++){
    irVal = analogRead(irPin);
    if (irVal >= 250){
      return;
    }
    gentlePulseLeds(fadeColour2[0]-i);
    setEyesColour(fadeColour2[0]-i, fadeColour2[1], fadeColour2[2]);
    eyesSolidColour();
    delay(delayVal);
  }
}

void resetEyes(){
  animation1Counter = 0;
  animation2Counter = 0;
  animation3Counter = 0;
}

void waitAnimations(){
  setEyesColour(fadeColour1[0],fadeColour1[1],fadeColour1[2]);
  eyesAnimation4(20);
}  

void testCompatability(){
  setEyesColour(fadeColour1[0],fadeColour1[1],fadeColour1[2]);
  randomNumber2 = random(3, totalNumMp3s + 1);
  myDFPlayer.play(randomNumber2);
  if (myDFPlayer.available()) {
    printDetail(myDFPlayer.readType(), myDFPlayer.read());
  }
  unsigned long testT0 = millis();
  while ((millis()-testT0) < testingTimer){
    eyesAnimation3(50,3);
    if ((millis()-testT0) > testingTimer){
      return; 
    }
  }
  myDFPlayer.pause(); 
}

void upgradeSucessfull(){
  for(int i=0; i<neopixelNum; i++){
    pixels.setPixelColor(i, pixels.Color(0,230,0));
  }
  pixels.show();
  ledsAllOn();
  myDFPlayer.play(1);
  if (myDFPlayer.available()) {
    printDetail(myDFPlayer.readType(), myDFPlayer.read());
  } 
  unsigned long sucessT0 = millis();
  while ((millis()-sucessT0) < sucessTimer){
    if ((millis()-sucessT0) > sucessTimer)
      return; 
  }
  myDFPlayer.pause();
}

void upgradeFailed(){
  for(int i=0; i<neopixelNum; i++){
    pixels.setPixelColor(i, pixels.Color(230, 0, 0));
  }
  pixels.show();
  ledsAllOff();
  myDFPlayer.play(2);
  if (myDFPlayer.available()) {
    printDetail(myDFPlayer.readType(), myDFPlayer.read());
  } 
  unsigned long failT0 = millis();
  while ((millis()-failT0) < failTimer){
    if ((millis()-failT0) > failTimer)
      return; 
  }
  myDFPlayer.pause();
}

void printDetail(uint8_t type, int value){
  switch (type) {
    case TimeOut:
      Serial.println(F("Time Out!"));
      break;
    case WrongStack:
      Serial.println(F("Stack Wrong!"));
      break;
    case DFPlayerCardInserted:
      Serial.println(F("Card Inserted!"));
      break;
    case DFPlayerCardRemoved:
      Serial.println(F("Card Removed!"));
      break;
    case DFPlayerCardOnline:
      Serial.println(F("Card Online!"));
      break;
    case DFPlayerError:
      Serial.print(F("DFPlayerError:"));
      switch (value) {
        case Busy:
          Serial.println(F("Card not found"));
          break;
        case Sleeping:
          Serial.println(F("Sleeping"));
          break;
        case SerialWrongStack:
          Serial.println(F("Get Wrong Stack"));
          break;
        case CheckSumNotMatch:
          Serial.println(F("Check Sum Not Match"));
          break;
        case FileIndexOut:
          Serial.println(F("File Index Out of Bound"));
          break;
        case FileMismatch:
          Serial.println(F("Cannot Find File"));
          break;
      }
  }
}

void setup(){
  for(int i=0; i<numLeds; i++){
    pinMode(ledPins[i], OUTPUT);
    ledsAllOff();
  }
  pixels.begin();
  eyesOff();
  Serial.begin(115200);
  mySoftwareSerial.begin(9600);
  if (!myDFPlayer.begin(mySoftwareSerial)) {
    Serial.println(F("Unable to begin:"));
    Serial.println(F("1.Please recheck the connection!"));
    Serial.println(F("2.Please insert the SD card!"));
    while(true);
  }
  Serial.println(F("DFPlayer Mini online."));
  myDFPlayer.setTimeOut(playerTimeout);
  myDFPlayer.volume(playerVolume);
  myDFPlayer.EQ(DFPLAYER_EQ_NORMAL);
  myDFPlayer.outputDevice(DFPLAYER_DEVICE_SD);
  totalNumMp3s = myDFPlayer.readFileCountsInFolder('MP3');
  randomSeed(analogRead(1));
}

void loop(){
  irVal = analogRead(irPin);
  if (alignEyes == 1){
    alignNeopixelEyes();
  } else if (alignEyes == 2){
    testNeopixelEyes();
  } else {
    if (irVal < 100){
      ledsAllOff();
      waitAnimations();
    } else if (irVal >= 250){
      testCompatability();
      randomNumber1 = random(0, 10);
      if (randomNumber1 >= 5){
        upgradeSucessfull();
      } else {
        upgradeFailed();
      }
    }
  }
}
