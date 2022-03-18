float pruneX=10;
float pruneY=10;
float vitX=2.4;
float vitY=0.9;
int score_player=0;
int score_ai=0;
PFont typo;

void setup() {
  size(800, 800);
  background(200);
  println("Hello World!");
  typo = loadFont("3270Condensed-48.vlw");
}

void draw() {
  background(30);
  ball();
  raquette();
  raqAi();
}

//ball
void ball() {
  rect(pruneX, pruneY, 10, 10);
  pruneX+=vitX;
  pruneY+= vitY;
  
  /*
  if (pruneX > width ||pruneX < 0) {
    vitX *= - 1;
  }*/
  if(pruneX > width){
    vitX *= - 1;  
    pruneX = width/2;
    pruneY = height/2;
    score_player++; //score_player += 1; //score_player = score_player + 1;
  }
  if(pruneX <0 ){
    vitX *= - 1;  
    pruneX = width/2;
    pruneY = height/2;
    score_ai++;
  }
  
  if (pruneY > height || pruneY < 0) {
    vitY *= - 1;
  }
  
  if(pruneX>raqX && pruneX < raqX + raqL && pruneY > raqY && pruneY < raqY + raqH){
    colRaq = color(random(255),random(255),random(255));
    vitX *= - 1;
    vitY = random(-2,2);
  }
  if(pruneX>raqAiX && pruneX < raqAiX + raqAiL && pruneY > raqAiY && pruneY < raqAiY + raqAiH){
    colRaq = color(random(255),random(255),random(255));
    vitX *= - 1;
    vitY = random(-2,2);
  }
  
  fill(255);
  textFont(typo);
  text(score_player,30,100);
  
  text(score_ai,width-100,100);
}

float raqX=40;
float raqY=30;
float raqL=20;
float raqH=100;
color colRaq = color(255);

void raquette(){
    fill(colRaq);
    rect(raqX,raqY,raqL,raqH);
    raqY = mouseY;
}


float raqAiX=40;
float raqAiY=30;
float raqAiL=20;
float raqAiH=100;

void raqAi(){
  fill(colRaq);
  rect(raqAiX,raqAiY,raqAiL,raqAiH);
  raqAiX = width-100;
  
  if(pruneY<raqAiY+raqAiH/2){
    raqAiY-=0.2;
  }
  if(pruneY>raqAiY+raqAiH/2){
    raqAiY+=0.2;
  }  
}
