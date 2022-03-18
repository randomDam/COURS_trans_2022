float pruneX=10;
float pruneY=10;
float vitX=2.4;
float vitY=0.9;
void setup() {
  size(800, 800);
  background(200);
  println("Hello World!");
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

  if (pruneX > width ||pruneX < 0) {
    vitX *= - 1;
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
    raqAiY-=0.8;
  }
  if(pruneY>raqAiY+raqAiH/2){
    raqAiY+=0.8;
  }  
}
