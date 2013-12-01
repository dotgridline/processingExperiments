float ballx = 300;
float bally = 250;
float yspeed = 3;
float xspeed = 2.5;
int pontos = 0;
PFont font;
int x = 0;
int pause;
int tmpscore = pontos;
int menu = 1;
 
void setup() {
  size(800, 600);
  font = loadFont("FranklinGothic.vlw");
  fill(255);
  noCursor();
  noStroke();
  smooth();
}
 
 
void draw() {
  background(0);
  ball();
  pads();
  pontos();
  speedplus();
  numbers();
}
 
 
void ball() {
  ballx += xspeed;
  bally += yspeed;
  rect(ballx, bally, 10, 10);
}
 
 
void pads() {
  rectMode(CENTER);
  rect(30, mouseY, 10, 70); // left pad
  rect(width-30, mouseY, 10, 70); // right pad
  rect(mouseX, 30, 70, 10); // top pad
  rect(mouseX, height-30, 70, 10); // bottom pad
   
}
 
 
void pontos() {
  if(ballx >= 25 && ballx <=35 ) {
    if (bally >= mouseY - 30 && bally <= mouseY + 30) {
      xspeed = -xspeed;
      pontos++;
    }
  }
  if(ballx <= width-25 && ballx >= width-35) {
    if(bally >= mouseY - 30 && bally <= mouseY + 30){
      xspeed = -xspeed;
      pontos++;
    }
  }
  if(bally >= 25 && bally <= 35){
    if(ballx >= mouseX - 30 && ballx <= mouseX + 30){
      yspeed = -yspeed;
      pontos++;
    }
  }
  if(bally >= height-35 && bally < height-25) {
    if(ballx >= mouseX - 30 && ballx <= mouseX + 30){
      yspeed = -yspeed;
      pontos++;
    }
  }
  if(ballx < 0 || ballx > width || bally < 0 || bally > height) {
    reset(); 
  }
}
      
            
void speedplus() { 
  if(pontos==10){
    if(yspeed==3 && xspeed==2.5){
      yspeed += 0.5;
      xspeed += 0.5;
    }
    if(yspeed == -3 && xspeed==2.5) {
      yspeed += -0.5;
      xspeed += 0.5;
    }
    if(yspeed == 3 && xspeed== -2.5) {
      yspeed += 0.5;
      xspeed += -0.5;
    }
    if(yspeed == -3 && xspeed==-2.5) {
      yspeed += -0.5;
      xspeed += -0.5;
    }
  }
   
  if(pontos==20){
    if(yspeed==3.5 && xspeed==3){
      yspeed += 1;
      xspeed += 1;
    }
    if(yspeed == -3.5 && xspeed==3) {
      yspeed += -1;
      xspeed += 1;
    }
    if(yspeed == 3.5 && xspeed== -3) {
      yspeed += 1;
      xspeed += -1;
    }
    if(yspeed == -3.5 && xspeed==-3) {
      yspeed += -1;
      xspeed += -1;
    }
  }
   
  if(pontos==25){
    if(yspeed==4.5 && xspeed==4){
      yspeed += 1.5;
      xspeed += 1.5;
    }
    if(yspeed == -4.5 && xspeed==4) {
      yspeed += -1.5;
      xspeed += 1.5;
    }
    if(yspeed == 4.5 && xspeed== -4) {
      yspeed += 1.5;
      xspeed += -1.5;
    }
    if(yspeed == -4.5 && xspeed==-4) {
      yspeed += -1.5;
      xspeed += -1.5;
    }
  }
   
  if(pontos==30){
    if(yspeed==6 && xspeed==5.5){
      yspeed += 2.5;
      xspeed += 2.5;
    }
    if(yspeed == -6 && xspeed==5.5) {
      yspeed += -2.5;
      xspeed += 2.5;
    }
    if(yspeed == 6 && xspeed== -5.5) {
      yspeed += 2.5;
      xspeed += -2.5;
    }
    if(yspeed == -6 && xspeed==-5.5) {
      yspeed += -2.5;
      xspeed += -2.5;
    }
  } 
}   
 
 
void reset() {
  ballx = 300;
  bally = 250;
  xspeed = 2.5;
  yspeed = 3;
  pontos=0;
 
   
}
 
void numbers() {
  textFont(font, 48);
  textAlign(CENTER);
  text(pontos, width/2, height/2);
}
