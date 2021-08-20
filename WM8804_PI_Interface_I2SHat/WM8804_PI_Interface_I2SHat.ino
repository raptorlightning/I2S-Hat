//#include <SPI.h>
#include <Wire.h>
//#include <Adafruit_GFX.h>
//#include <Adafruit_SSD1306.h>

//*** OLED Code is Commented Out ***//

//#define SCREEN_WIDTH 128 // OLED display width, in pixels
//#define SCREEN_HEIGHT 32 // OLED display height, in pixels

// Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
//#define OLED_RESET     -1 // Reset pin # (or -1 if sharing Arduino reset pin)
//Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

int wm8804 = 0x3A;  // device wm8804 = 0x3A = 00111010
byte error;
int SPDSTAT, INTSTAT;
float frequency = 44100;
unsigned long count = 0;
bool toggle = 0;
int fs = 0;
byte x = 0;
volatile unsigned int T1capture;
volatile unsigned int lastT1capture;
volatile unsigned int period;

void setup() {
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  
  //Default to Unknown Output
  digitalWrite(5, LOW);
  digitalWrite(6, LOW);
  digitalWrite(7, LOW);
  
  //if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C))
  //{
  //    Serial.println(F("SSD1306 allocation failed"));
  //}
  
  //display.clearDisplay();
  //display.setTextSize(2);
  //display.setTextColor(SSD1306_WHITE);

  Wire.begin();
  Serial.begin(9600);
  Wire.beginTransmission(wm8804);
  error = Wire.endTransmission();

  if (error == 0)
  {
    Serial.println("wm8804 found!");
  }
  else if (error == 4)
  {
    Serial.println("Unknown error at address 0x3A");
  }
  else
  {
    Serial.println("No response from wm8804!");
  }

  Serial.print("Device ID: ");
  byte c = ReadRegister(wm8804, 1);
  if (c < 10) {
    Serial.print('0');
  }
  Serial.print(c, HEX);

  c = ReadRegister(wm8804, 0);
  if (c < 10) {
    Serial.print('0');
  }
  Serial.print(c, HEX);

  Serial.print(" Rev. ");
  c = ReadRegister(wm8804, 2);
  Serial.println(c, HEX);
  delay(45000);
  DeviceInit(wm8804);
}

void loop()
{
  INTSTAT = 0;
  while (INTSTAT == 0) {
    if (fs == 0) {                      // in case SR reading is erratic...
      identifySR () ;                   // updates with new SR reading
      //Serial.print ("SR=");
      //Serial.println (fs);
    }
    //Serial.println("INTSTAT");
    //Serial.print ("SR=");
    //Serial.println (fs);
    delay(100);
    INTSTAT = ReadRegister(wm8804, 11); // keep polling (and clearing) interrupt register
  }                                     // until there is an interruption

  // identify what had triggered the interrupt with wm8804
  // most of these shouldn't happen as they are masked off
  // but still useful for debugging

  if (bitRead(INTSTAT, 0)) {                                  // if there has been status changes...
    SPDSTAT = ReadRegister(wm8804, 12);                       // ...and PLL
    if (bitRead(SPDSTAT, 6)) {                                // has gone unlocked?
      delay(100);
      Serial.println("SPDSTAT 6 HIGH");

      // try again to try to reject transient errors
      SPDSTAT = ReadRegister(wm8804, 12);
      if (bitRead(SPDSTAT, 6)) {                              // has PLL really gone unlocked?
        x = 0 ;
        PLLunlocked(wm8804);                                  // tune and roll RX 'till PLL locking recovers
      }
    }
    else {
      Serial.println("S/PDIF PLL locked");
    }
    identifySR ();
    SpdifTxOn (wm8804);
  }                                                           // if (bitRead(INTSTAT, 0))
  
  if (bitRead(INTSTAT, 1)) {                                         // INT_INVALID
    Serial.println("INT_INVALID");
  }

  if (bitRead(INTSTAT, 2)) {                                         // INT_CSUD
    Serial.println("INT_CSUD");
  }

  if (bitRead(INTSTAT, 3)) {                                         // INT_TRANS_ERR
    Serial.println("INT_TRANS_ERR");
  }

  if (bitRead(INTSTAT, 4)) {                                         // UPD_NON_AUDIO
    Serial.println("UPD_NON_AUDIO");
  }

  if (bitRead(INTSTAT, 5)) {                                         // UPD_CPY_N
    Serial.println("UPD_CPY_N");
  }

  if (bitRead(INTSTAT, 6)) {                                         // UPD_DEEMPH
    Serial.println("UPD_DEEMPH");
  }

  if (bitRead(INTSTAT, 7)) {                                         // UPD_REC_FREQ
    Serial.println("Sample rate changed...");
    //PLLunlocked(wm8804);
  }
}

/***********************************
  // Functions go below main loop //
***********************************/

byte ReadRegister(int devaddr, int regaddr) {                       // Read a data register value
  Wire.beginTransmission(devaddr);
  Wire.write(regaddr);
  Wire.endTransmission(false);                                      // repeated start condition by not sending stop.
  Wire.requestFrom(devaddr, 1); // only one byte
  byte data = Wire.read();
  Wire.endTransmission(true);
  return data;
}

void WriteRegister(int devaddr, int regaddr, int dataval) {         // Write a data register value
  Wire.beginTransmission(devaddr); // device
  Wire.write(regaddr); // register
  Wire.write(dataval); // data
  Wire.endTransmission(true);
}

void DeviceInit(int devaddr) {            // resets, initializes and powers up a wm8804
  // reset device
  WriteRegister(devaddr, 0, 0);

  // REGISTER 7
  // bit 7:6 - always 0
  // bit 5:4 - CLKOUT divider select => 00 = 512 fs, 01 = 256 fs, 10 = 128 fs, 11 = 64 fs
  // bit 3 - MCLKDIV select => 0
  // bit 2 - FRACEN => 1
  // bit 1:0 - FREQMODE (is written by S/PDIF receiver) => 00
  WriteRegister(devaddr, 7, B00000100);

  // REGISTER 8
  // set clock outputs and turn off last data hold
  // bit 7 - MCLK output source select is CLK2 => 0
  // bit 6 - always valid => 0
  // bit 5 - fill mode select => 1 (we need to see errors when they happen)
  // bit 4 - CLKOUT pin disable => 1
  // bit 3 - CLKOUT pin select is CLK1 => 0
  // bit 2:0 - always 0
  WriteRegister(devaddr, 8, B00110000);

  // REGISTER 9
  //set SPDIF RX input levels for each channel
  WriteRegister(devaddr, 9, B11111110);     //LSB = 0 for CMOS RX, 1 for 0.5Vpp RX

  // set masking for interrupts
  WriteRegister(devaddr, 10, B01111110);  // We only care about unlock and rec_freq

  // set the AIF TX
  // bit 7:6 - always 0
  // bit   5 - LRCLK polarity => 0
  // bit   4 - BCLK invert => 0
  // bit 3:2 - data word length => 10 (24b) or 00 (16b)
  // bit 1:0 - format select: 11 (dsp), 10 (i2s), 01 (LJ), 00 (RJ)
  WriteRegister(devaddr, 27, B00001010);

  // set the AIF RX
  // bit   7 - SYNC => 1
  // bit   6 - master mode => 1
  // bit   5 - LRCLK polarity => 0
  // bit   4 - BCLK invert => 0
  // bit 3:2 - data word length => 10 (24b) or 00 (16b)
  // bit 1:0 - format select: 11 (dsp), 10 (i2s), 01 (LJ), 00 (RJ)
  WriteRegister(devaddr, 28, B11001010);

  // SPDIF TX to take AIF (I2S) Data as input
  WriteRegister(devaddr, 21, B01111001);

  // set PLL K and N factors
  // this should be sample rate dependent, but makes hardly any difference
  WriteRegister(devaddr, 6, 7);                  // set PLL_N to 7
  WriteRegister(devaddr, 5, 0x36);                 // set PLL_K to 36FD21 (36)
  WriteRegister(devaddr, 4, 0xFD);                 // set PLL_K to 36FD21 (FD)
  WriteRegister(devaddr, 3, 0x21);                 // set PLL_K to 36FD21 (21)

  delay(50);
  // power up device
  WriteRegister(devaddr, 30, 0x00);
  delay(500);
  Serial.println("INIT COMPLETE!");
}

void PLLunlocked(int devaddr) {
  // PLL unlock service routine
  SpdifTxOff(wm8804);
  Serial.println("S/PDIF PLL unlocked");
  //fs = 0;

  // switch PLL mode and coeff settings around trying to find lock

  while (bitRead(SPDSTAT, 6)) {
    if (toggle) {
      PLLmode192(wm8804);
      SPDSTAT = ReadRegister(devaddr, 12);
      ++x ;
    }
    else {
      PLLmodeNormal(wm8804);
      SPDSTAT = ReadRegister(devaddr, 12);
      ++x ;
    }
    if (x >= 8) {                                     // test 192 and normal mode 4 times each                            
      x=0;                                            // before signalling retry and setting fs=0;
      fs=0;
      Serial.println("Retrying");
    }
  } 
}

void PLLmode192(int devaddr) {
  //Serial.println("trying 192 kHz mode...");
  WriteRegister(devaddr, 6, 8);                  // set PLL_N to 8
  WriteRegister(devaddr, 5, 12);                 // set PLL_K to 0C49BA (0C)
  WriteRegister(devaddr, 4, 73);                 // set PLL_K to 0C49BA (49)
  WriteRegister(devaddr, 3, 186);                // set PLL_K to 0C49BA (BA)
  toggle = 0;
  delay(200);
}

void PLLmodeNormal(int devaddr) {
  //Serial.println("trying normal mode...");
  WriteRegister(devaddr, 6, 7);                  // set PLL_N to 7
  WriteRegister(devaddr, 5, 54);                 // set PLL_K to 36FD21 (36)
  WriteRegister(devaddr, 4, 253);                // set PLL_K to 36FD21 (FD)
  WriteRegister(devaddr, 3, 33);                 // set PLL_K to 36FD21 (21)
  toggle = 1;
  delay(200);
}

ISR (TIMER1_CAPT_vect)
{
  T1capture = ICR1 ;
  period = T1capture - lastT1capture;
  lastT1capture = T1capture ;
}

void prepareForInterrupts ()
{
  noInterrupts ();  // protected code
  TCCR1B = (1 << ICES1) + 1;
  TIMSK1 = (1 << ICIE1) ;
  TCCR1A = 0;
  interrupts ();
}

void identifySR ()
{
  prepareForInterrupts ();
  delay(1);                    // allow time for LRCK pulses to get captured by timer1
  TIMSK1 = (0 << ICIE1) ;      // stop responding the input capture
  //  Serial.print ("Count = ");
  //  Serial.println (period);

  if (period >= 81 && period <= 85) {
//    if (toggle) {
      if (fs != 192){
        Serial.println("192 KHz");
        PLLmode192(wm8804);
        digitalWrite(5, HIGH);
        digitalWrite(6, HIGH);
        digitalWrite(7, HIGH);
        fs = 192 ;
      }
//      display.clearDisplay();
//      display.setCursor(0,0);
//      display.println(F("Frequency:"));
//      display.println(F(" 192kHz"));
//      display.display();
//    }
  }
  else if (period >= 89 && period <= 93) {
//    if (toggle == 0) {
      if (fs != 176){
        Serial.println("176.4 KHz");
        PLLmodeNormal(wm8804);
        digitalWrite(5, HIGH);
        digitalWrite(6, HIGH);
        digitalWrite(7, LOW);
        fs = 176 ;
      }
//    display.clearDisplay();
//    display.setCursor(0,0);
//    display.println(F("Frequency:"));
//    display.println(F(" 176.4kHz"));
//    display.display();
//    }
  }
  else if (period >= 164 && period <= 170) {
//    if (toggle == 0) {
      if (fs != 96){
        Serial.println("96 KHz");
        PLLmodeNormal(wm8804);
        digitalWrite(5, HIGH);
        digitalWrite(6, LOW);
        digitalWrite(7, HIGH);
        fs = 96 ;
      }
//    display.clearDisplay();
//    display.setCursor(0,0);
//    display.println(F("Frequency:"));
//    display.println(F(" 96kHz"));
//    display.display();
//    }
  }
  else if (period >= 177 && period <= 185) { 
//    if (toggle == 0) {
      if (fs != 88){
        Serial.println("88.2 KHz");
        PLLmodeNormal(wm8804);
        digitalWrite(5, HIGH);
        digitalWrite(6, LOW);
        digitalWrite(7, LOW);
        fs = 88 ;
      }      
//    display.clearDisplay();
//    display.setCursor(0,0);
//    display.println(F("Frequency:"));
//    display.println(F(" 88.2kHz"));
//    display.display();
//    }
  }
  else if (period >= 326 && period <= 339) {
//    if (toggle == 0) {
      if (fs != 48){
        Serial.println( "48 KHz");
        PLLmodeNormal(wm8804);
        digitalWrite(5, LOW);
        digitalWrite(6, HIGH);
        digitalWrite(7, HIGH);
        fs = 48 ;
      }
//    display.clearDisplay();
//    display.setCursor(0,0);
//    display.println(F("Frequency:"));
//    display.println(F(" 48kHz"));
//    display.display();
//    }
  }
  else if (period >= 356 && period <= 370) {
//    if (toggle == 0) {
      if (fs != 44){
        Serial.println("44.1 KHz");
        PLLmodeNormal(wm8804);
        digitalWrite(5, LOW);
        digitalWrite(6, HIGH);
        digitalWrite(7, LOW); 
        fs = 44;
      } 
//    display.clearDisplay();
//    display.setCursor(0,0);
//    display.println(F("Frequency:"));
//    display.println(F(" 44.1kHz"));
//    display.display();
//    }
  }
  else if (period >= 490 && period <= 510) {
//    if (toggle == 0) {
      if (fs != 32){
        Serial.println("32 KHz");
        PLLmodeNormal(wm8804);
        digitalWrite(5, LOW);
        digitalWrite(6, LOW);
        digitalWrite(7, HIGH);
        fs = 32;
      }
//    display.clearDisplay();
//    display.setCursor(0,0);
//    display.println(F("Frequency:"));
//    display.println(F(" 32kHz"));
//    display.display();
//    }
  }
  else {
    if (fs != 0){
      Serial.println("Unknown");
      digitalWrite(5, LOW);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
      fs = 0;
    }
//    display.clearDisplay();
//    display.setCursor(0,0);
//    display.println(F("Frequency:"));
//    display.println(F(" Unknown"));
//    display.display();
  }
}

void SpdifTxOff(int devaddr) {
  WriteRegister(devaddr, 30, 0x04);              // all up but spdif TX
  delay(10);
}

void SpdifTxOn(int devaddr) {
  WriteRegister(devaddr, 30, 0);                 // all up spdif TX included
  delay(10);
}

void SpdifRxOff(int devaddr) {
  WriteRegister(devaddr, 30, 0x02); // turn off spdif RX
  delay (10);
}

void SpdifRxOn(int devaddr) {
  WriteRegister(devaddr, 30, 0x00); // turn on spdif RX
  delay (10); 
}
