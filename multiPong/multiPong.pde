//Initial values for x and y from ball
float ballx = 300;
float bally = 250;

//Speed of the ball
float yspeed = 3;
float xspeed = 2.5;

//Initial score
int score = 0;

//Get font
PFont font;

// int x = 0;
// int pause;
// int menu = 1;
 
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
  score();
  counterScore();
  speedPlus();
}

//Elements seen by the user
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

void score() {
  textFont(font, 48);
  textAlign(CENTER);
  text(score, width/2, height/2);
}
 
void counterScore() {
  if(ballx >= 25 && ballx <=35 ) {
    if (bally >= mouseY - 30 && bally <= mouseY + 30) {
      xspeed = -xspeed;
      score++;
    } 
    else if (ballx >= mouseX - 30 && ballx <= mouseX + 30){
      yspeed = -yspeed;
      score++;
    }
  } 
  else if (ballx <= width-25 && ballx >= width-35) {
    if(bally >= mouseY - 30 && bally <= mouseY + 30){
      xspeed = -xspeed;
      score++;
    }
    else if (ballx >= mouseX - 30 && ballx <= mouseX + 30){
      yspeed = -yspeed;
      score++;
    }
  }
  else if(ballx < 0 || ballx > width || bally < 0 || bally > height) {
    finalScore(); 
  }
}

void speedPlus() { 
  if(score==10){
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
   
  if(score==20){
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
   
  if(score==25){
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
   
  if(score==30){
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

//Final Score and reset function
void finalScore(){
  background(0);
  textAlign(CENTER);

  // Game Over  
  textFont(font, 56);
  text("GAME OVER", width/2, height/1.4);

  // Start Again   
  textFont(font, 36);
   text("Click your mouse to start again!", width/2, height/1.2);
  
  if (mousePressed == true){
    reset();
  }
}    

void reset() {
  ballx = 300;
  bally = 250;
  xspeed = 2.5;
  yspeed = 3;
  score=0;   
}
 

