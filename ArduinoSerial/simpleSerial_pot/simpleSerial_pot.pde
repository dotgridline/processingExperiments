
 
 void setup() {
  Serial.begin(9600); 
 }
 
 void loop() {

   int analogValue = analogRead(0);

   Serial.print(analogValue,DEC);

   delay(100);
 }
