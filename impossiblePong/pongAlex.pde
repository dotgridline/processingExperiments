//bola
float bola_x;
float bola_y;
float bola_dir = 1;
float bola_size = 10; 
//velocidade eixo y
float bolay = random( -2 ,5);



//jogador
int jogador_width = 10;
int jogador_height = 60;

int dist_parede = 20;

//cpu
PVector velocity;
int cpu_width = 10;
int cpu_height = 60;
int dist_paredecpu = 790;



void setup()
{
  size(810, 540);
  //Radius altera o referencial
  rectMode(RADIUS);
  ellipseMode(RADIUS);
  noStroke();
  smooth();
  bola_y = height/2;
  bola_x = width/2;
  velocity = new PVector(0,2);
}

void draw() 
{
  background(20, 100, 50);
  
  //velocidade
  bola_x += bola_dir * 5.0;
  bola_y += bolay;
  
  if(bola_x > width + bola_size) {
    setup();
  }
  
  //Jogador controla pelo mouse
  float jogador_y = constrain(mouseY, jogador_height, height-jogador_height);

  //Colisões 
  float py = width-dist_parede-jogador_width-bola_size;
  //810 - 20 - 10 - 10 = 770  
  if(bola_x == py 
     && bola_y > jogador_y - jogador_height - bola_size 
     && bola_y < jogador_y + jogador_height + bola_size) {
    bola_dir *= -1;
    if(mouseY != pmouseY) {
      bolay = (mouseY-pmouseY)/2.0;
      if(bolay >  5) { bolay =  5; }
      if(bolay < -5) { bolay = -5; }
    }
  } 
  //Liga altura do cpu_Y a altura da bola
    float cpu_y = constrain(bola_y, cpu_height, height-cpu_height);
    float cy = bola_size+dist_parede;
    //20
    velocity.limit(2);
    
    //Troca a direçao para a colisão com a cpu
  if(bola_x == cy
    && bola_dir == -1
    && bola_y > cpu_y - cpu_height - bola_size 
    && bola_y < cpu_y + cpu_height + bola_size) {
    bola_dir *= -1;
  }
  
  //Troca direção para a colisao com a aresta inferior
  if(bola_y > height-bola_size) {
    bolay = bolay * -1;
  }
  //troca direçao para a colisao com a aresta superior
  if(bola_y < bola_size) {
    bolay = bolay * -1;
  }

  //bola
  fill(255);
  ellipse(bola_x, bola_y, bola_size, bola_size);
  
 //Jogador
  fill(20, 30, 153);
  rect(width-dist_parede, jogador_y, jogador_width, jogador_height);  
  
  //Cpu
  fill(153, 30, 20);
  rect(width-dist_paredecpu, bola_y, cpu_width, cpu_height);  
}



