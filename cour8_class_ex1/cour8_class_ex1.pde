Ball [] tab_balls= new Ball[1000];
int [] tab_entier = new int[100];
//TYPE [] NOM_DUTABLEAU = new TYPE[NbreDeCase];

void setup(){
  size(800,800,P2D);
  for(int i=0;i<tab_balls.length;i++){
    tab_balls[i] = new Ball(random(width),random(height),random(5,15));
  }
}

void draw(){
  //background(255);
  for(int i=0;i<tab_balls.length;i++){
    tab_balls[i].aff();
  }
}
