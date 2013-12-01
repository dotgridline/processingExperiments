
int[] xpos = new int[50]; 
int[] ypos = new int[50];
float R;
float G;
float B;

void setup() {
  size(800,600);
  noCursor();
  smooth();
  // Initialize all elements of each array to zero.
  for (int i = 0; i < xpos.length; i ++ ) {
    xpos[i] = 0; 
    ypos[i] = 0;
     
  }
}

void draw() {
 
   if (keyPressed == true) {
    background(B,R,G);
   }
    else {
    background(255);
  }
  
  
  // Shift array values
  for (int i = 0; i < xpos.length-1; i ++ ) {
    // Shift all elements down one spot. 
    // xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on. Stop at the second to last element.
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
  
  // New location
  xpos[xpos.length-1] = mouseX; // Update the last spot in the array with the mouse location.
  ypos[ypos.length-1] = mouseY;
  
  // Draw everything
  for (int i = 0; i < xpos.length; i ++ ) {
     // Draw an ellipse for each element in the arrays. 
     // Color and size are tied to the loop's counter: i.
    noStroke();
    fill(R,G,B);
    ellipse(xpos[i],ypos[i],i,i);
  }
}

void mousePressed() {
    R = (random(255));
    G = (random(255));
    B = (random(255));
}
