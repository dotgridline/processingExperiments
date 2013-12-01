float bolax = width/2;
float bolay = height/2;
float yspeed = 4;
float xspeed = 4;
int pontos = 0;
PFont font;
int x = 0;
int pause;
int tmpscore = pontos;
int menu = 1;
int value = 0;

 
void setup() {
  size(800, 600);
  font = loadFont("zAristaLight-48.vlw");
  background(0);
  fill(255);
  noStroke();
  noCursor();
  smooth();
}
 
void draw() {
  noCursor();
  background(0);
  ball();
  pads();
  pontos();
  speedplus();
  numbers();
  
  
}

 
void ball() {
  bolax += xspeed;
  bolay += yspeed;
  fill(255);
  ellipse(bolax, bolay, 10, 10);
}
 
 
void pads() {
  
  rectMode(CENTER);
  rect(30, mouseX, 10, 70);
  rect(mouseY, 30, 70, 10);
  rect(width-30, mouseX, 10, 70);
  rect(mouseY, height-30, 70, 10);
 
   
}
 
 
void pontos() {
  if(bolax >= 25 && bolax <=35 ) {
    if (bolay >= mouseX - 30 && bolay <= mouseX + 30) {
      xspeed = -xspeed;
      pontos++;
    }
  }
  if(bolax <= width-25 && bolax >= width-35) {
    if(bolay >= mouseX - 30 && bolay <= mouseX + 30){
      xspeed = -xspeed;
      pontos++;
    }
  }
  if(bolay >= 25 && bolay <= 35){
    if(bolax >= mouseY - 30 && bolax <= mouseY + 30){
      yspeed = -yspeed;
      pontos++;
    }
  }
  if(bolay >= height-35 && bolay < height-25) {
    if(bolax >= mouseY - 30 && bolax <= mouseY + 30){
      yspeed = -yspeed;
      pontos++;
    }
  }
  

  if(bolax < 0 || bolax > width || bolay < 0 || bolay > height) {
  background(0);
  textFont(font, 56);
  textAlign(CENTER);
  text("GAME OVER", width/2, height/1.4);
  textFont(font, 36);
   text("Clique com o mouse para reiniciar!", width/2, height/1.2);
  
  if (mousePressed == true){
    reset();
  }
  }
}
      
            
void speedplus() { 
  if(pontos==2){
    if(yspeed==3 && xspeed==2.5){
      yspeed += 0.5;
      xspeed += 0.5;
      mouseY=-mouseY;
      mouseX=-mouseX;
    }
    if(yspeed == -3 && xspeed==2.5) {
      yspeed += -0.5;
      xspeed += 0.5;
      mouseY=-mouseY;
      mouseX=-mouseX;
    }
    if(yspeed == 3 && xspeed== -2.5) {
      yspeed += 0.5;
      xspeed += -0.5;
      mouseY=-mouseY;
      mouseX=-mouseX;
    }
    if(yspeed == -3 && xspeed==-2.5) {
      yspeed += -0.5;
      xspeed += -0.5;
      mouseY=-mouseY;
      mouseX=-mouseX;
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
  bolax = 300;
  bolay = 250;
  xspeed = 2.5;
  yspeed = 3;
  pontos=0;
 
   
}
 
void numbers() {
  textFont(font, 48);
  textAlign(CENTER);
  text(pontos, width/2, height/2);
  text("Score", width/2, height/2.5);
}



