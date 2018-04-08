
#include <Adafruit_NeoPixel.h>

byte L1PIN = 2;
byte L2PIN = 3;
byte L3PIN = 4;
byte L4PIN = 5;
byte EYESPIN = 6;
byte V1PIN = 7;
byte V2PIN = 8;

byte NUMPIXELS = 16;
byte animation1Counter = 0;
byte animation2Counter = 0;
byte animation3Counter = 0;
byte litPixel = 0;
char in;

byte eyesColour[] = {0, 0, 255};
byte fadeColour1[] = {0, 0, 255};
byte fadeColour2[] = {128, 0, 255};

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, EYESPIN, NEO_GRB + NEO_KHZ800);
int animationState = 1;
void setup(){
  Serial.begin(9600);
  pinMode(L1PIN, OUTPUT);
  pinMode(L2PIN, OUTPUT);
  pinMode(L3PIN, OUTPUT);
  pinMode(L4PIN, OUTPUT);
  pinMode(V1PIN, OUTPUT);
  pinMode(V2PIN, OUTPUT);
  digitalWrite(L1PIN, LOW);
  digitalWrite(L2PIN, LOW);
  digitalWrite(L3PIN, LOW);
  digitalWrite(L4PIN, LOW);
  pixels.begin();
  delay(1000);
}

void loop(){
  if (Serial.available()){
    in = Serial.read();
    switch (in){
      case 'a':
        soundSelect(V1PIN);
        break;
      case 'b':
        soundSelect(V2PIN);
        break;
      case 'c':
        wiresLEDsOn(L1PIN);
        break;
      case 'd':
        wiresLEDsOn(L2PIN);
        break;
      case 'e':
        wiresLEDsOn(L3PIN);
        break;
      case 'f':
        wiresLEDsOn(L4PIN);
        break;
      case 'g':
        wiresLEDsOff(L1PIN);
        break;
      case 'h':
        wiresLEDsOff(L2PIN);
        break;
      case 'i':
        wiresLEDsOff(L3PIN);
        break;
      case 'j':
        wiresLEDsOff(L4PIN);
        break;
      case 'k':
        animationState = 0;
        break;
      case 'l':
        animationState = 4;
        break;
      case 'm':
        animationState = 2;
        break;
      case 'n':
        animationState = 3;
        break;
      case 'o':
        animationState = 1;
        break;
      default:
        soundOff();
    }
  }
  if (animationState == 4){
    eyesAnimation4(15);
  } else if (animationState == 3){
    setEyesColour(fadeColour1[0],fadeColour1[1],fadeColour1[2]);
    eyesAnimation3(25,3);
  } else if (animationState == 2){
    setEyesColour(fadeColour1[0],fadeColour1[1],fadeColour1[2]);
    eyesSolidColour();
  } else if (animationState == 1){
    eyesOff();
  } else if (animationState == 0){
    //setEyesColour(237,0,127);
    setEyesColour(255,0,0);
    eyesSolidColour();
  }
}

void wiresLEDsOn(byte LEDPinOn){
  digitalWrite(LEDPinOn, HIGH); 
}

void wiresLEDsOff(byte LEDPinOff){
  digitalWrite(LEDPinOff, LOW);
}

void soundSelect(byte pinSel){
  digitalWrite(pinSel, HIGH);
  if (pinSel == 9)
    delay(4000);
  else
    delay(200);
  digitalWrite(pinSel, LOW);
}

void soundOff(){
  digitalWrite(V1PIN, LOW);
  digitalWrite(V2PIN, LOW); 
}

void setEyesColour(byte r, byte g, byte b){
  eyesColour[0] = r;
  eyesColour[1] = g;
  eyesColour[2] = b; 
}

void eyesSolidColour(){
  for(int i=0; i<NUMPIXELS; i++){
    pixels.setPixelColor(i, pixels.Color(eyesColour[0],eyesColour[1],eyesColour[2]));
  } 
  pixels.show();
}

void eyesOff(){
  for (int i=0; i<NUMPIXELS; i++){
    pixels.setPixelColor(i, pixels.Color(0,0,0));
  } 
  pixels.show();
}

void eyesAnimation1(int delayVal, boolean stayOn){
  if (animation1Counter == NUMPIXELS/2){
     animation1Counter = 0;
  }
  pixels.setPixelColor(animation1Counter, pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
  pixels.setPixelColor(animation1Counter+(NUMPIXELS/2), pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
  pixels.show();
  delay(delayVal);
  if (!stayOn){
    if (animation1Counter == NUMPIXELS/2 -1){
      eyesOff();
    }
  }
  animation1Counter++;
}

void eyesAnimation2(int delayVal){
  if (animation2Counter == NUMPIXELS/2){
     animation2Counter = 0;
  }
  pixels.setPixelColor(animation2Counter, pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
  pixels.setPixelColor(animation2Counter+(NUMPIXELS/2), pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
  pixels.show();
  delay(delayVal);
  eyesOff();
  delay(delayVal);
  animation2Counter++;
}

void eyesAnimation3(int delayVal, byte nLitPixels){
  eyesOff();
  if (animation3Counter == NUMPIXELS/2){
     animation3Counter = 0;
  }
  for (byte i=0; i<nLitPixels; i++){
    litPixel = animation3Counter + i;
    if (litPixel >= (NUMPIXELS/2)){
      litPixel = (animation3Counter - (NUMPIXELS/2)) + i;
    }
    pixels.setPixelColor((litPixel), pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
    pixels.setPixelColor((litPixel+(NUMPIXELS/2)), pixels.Color(eyesColour[0], eyesColour[1], eyesColour[2]));
  }
  pixels.show();
  delay(delayVal);
  animation3Counter++;
}

void eyesAnimation4(int delayVal){
  if (Serial.available())
    return;
  setEyesColour(fadeColour1[0],fadeColour1[1],fadeColour1[2]);
  eyesSolidColour();
  for (byte i=0; i<fadeColour2[0]; i++){
    setEyesColour(fadeColour1[0]+i, fadeColour1[1], fadeColour1[2]);
    eyesSolidColour();
    delay(delayVal);
  }
  if (Serial.available())
    return;
  delay(delayVal);
  for (byte i=0; i<fadeColour2[0]; i++){
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
