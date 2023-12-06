//YWROBOT
//Compatible with the Arduino IDE 1.0
//Library version:1.1
#include <Wire.h> 
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27,20,4);  // set the LCD address to 0x27 for a 16 chars and 2 line display

void setup()
{
  lcd.init();                      // initialize the lcd 
  lcd.init();
  // Print a message to the LCD.
  lcd.backlight();
}


void loop()
{
  for(int i = 0; i<16; i++)
    lcd.createChar(i, makeBar(random(8), random(8), random(8), random(8), random(8)));
  lcd.home();
  for(int i = 0; i<16; i++)
    lcd.write(i);
}

byte* makeBar(int p1, int p2, int p3, int p4, int p5)
{
  
  static byte cC[] = {
    B0,
    B0,
    B0,
    B0,
    B0,
    B0,
    B0,
    B0,
  };
  for(int i = 0; i < 8; i++)
  {
    byte row = B0;
    if(p1>i)
    {
      row = row + B10000;
    }
    if(p2>i)
    {
      row = row + B1000;
    }
    if(p3>i)
    {
      row = row + B100;
    }
    if(p4>i)
    {
      row = row + B10;
    }
    if(p5>i)
    {
      row = row + B1;
    }
    cC[7-i] = row;
  }
  return cC;
}
