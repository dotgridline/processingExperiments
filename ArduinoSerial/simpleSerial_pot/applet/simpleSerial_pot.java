import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class simpleSerial_pot extends PApplet {


 
 public void setup() {
  Serial.begin(9600); 
 }
 
 public void loop() {

   int analogValue = analogRead(0);

   Serial.print(analogValue,dec);

   delay(100);
 }
  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--hide-stop", "simpleSerial_pot" });
  }
}
