////////////////////////////////////////////////////////
class Ball{
  float x=100;
  float y=100;
  float vx=random(-1,1);
  float vy=random(-1,1);
  color col=color(random(255),random(255),random(255));
  float t=10;
  //Constructeur
  Ball(float _x,float _y,float _t){
    x=_x;
    y=_y;
    t=_t;
  }

  void aff(){
    fill(col);
    noStroke();
    if(frameCount%60==0)
    rect(x,y,t,t);
    x+=vx;
    y+=vy;
    if(x<0 || x>width)vx*=-1;
    if(y<0 || y>height)vy*=-1;
  }
}
