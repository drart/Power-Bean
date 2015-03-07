// the pin controlling the relay
#define POWERPIN 0

void setup()
{
    Serial.begin(57600); 
    Serial.setTimeout(25);
    pinMode(POWERPIN, INPUT_PULLUP);
}

void loop()
{
  char buffer[64];
  size_t length = 64; 
  length = Serial.readBytes(buffer, length);    
  
  //if (length > 2) return; // this is not the packet we are looking for  
    
  if( length > 0 )
  {
    if(buffer[0] == 234)
    {
      byte val = buffer[1];
      val = (val > 0) ? HIGH : LOW; 
      digitalWrite(POWERPIN, val);
      
      // little bit of visual feedback for sanity
      Bean.setLed( 255, 0, 0 );
      delay( 500 );
      Bean.setLed( 0, 0, 0 );
    }
  }
   
  Bean.sleep(0xFFFFFFFF); 
}
