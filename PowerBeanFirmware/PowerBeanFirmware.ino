// the pin controlling the relay
#define POWERPIN 0
#define POWERCHAR 15

void setup()
{
    Bean.setBeanName("PowerBean");

    Serial.begin(57600); 
    Serial.setTimeout(25);
    pinMode(POWERPIN, OUTPUT);
}

void loop()
{
  char buffer[64];
  size_t length = 64; 
  length = Serial.readBytes(buffer, length);    
      
  if( length > 0 )
  {
    if(buffer[0] == POWERCHAR)
    {
      byte val = buffer[1];
      val = (val > 0) ? HIGH : LOW; 
      digitalWrite(POWERPIN, HIGH);
      
      if (val == HIGH)
      {
        Bean.setLed( 0, 255, 0 );
        digitalWrite(POWERPIN, HIGH);
      } 
      else
      { 
        Bean.setLed( 255, 0, 0 );
        digitalWrite(POWERPIN, LOW);
      }
      delay( 500 );
      Bean.setLed( 0, 0, 0 );
    }
    else
    {
      // little bit of visual feedback for sanity
      Bean.setLed( 255, 0, 0 );
      delay( 250 );
      Bean.setLed( 0, 0, 0 );
      delay( 250 );
      Bean.setLed( 255, 0, 0 );
      delay( 250 );
      Bean.setLed( 0, 0, 0 );

      //Serial.write((uint8_t*)buffer, length);
    }
  }   
  Bean.sleep(0xFFFFFFFF); 
}
