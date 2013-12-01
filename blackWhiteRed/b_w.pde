import processing.video.*;

color black = color(0);
color white = color(255);
color blood = color(255,0,0);
int numPixels;
Capture video;

void setup() {
 size(640, 480); // Change size to 320 x 240 if too slow at 640 x 480
 strokeWeight(5);
 // Uses the default video input, see the reference if this causes an error
 video = new Capture(this, width, height, 24);
 numPixels = video.width * video.height;
 noCursor();
 smooth();
}

void draw() {
 if (video.available()) {
   video.read();
     //image(video, 0, 0);
   video.loadPixels();
   int threshold = 125; // Set the threshold value
   float pixelBrightness; // Declare variable to store a pixel's color
   float pixelRed;
   // Turn each pixel in the video frame black or white depending on its brightness
   loadPixels();
   for (int i = 0; i < numPixels; i++) {
     pixelRed = abs(red(video.pixels[i]));
     pixelBrightness = brightness(video.pixels[i]);
     if (pixelBrightness > threshold) { // If the pixel is brighter than the
       if (pixelRed > 125){
           pixels[i] = blood;
       }
       else{
       pixels[i] = white; // threshold value, make it white
       }
     } 
     else { // Otherwise,
     pixels[i] = black; 
     //  pixels[i] = video.pixels[i]; // make it black
     }
   }
   
   updatePixels();
 }
 
}

