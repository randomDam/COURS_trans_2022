class Agent{
  float x=0;
  float y=0;
  char c=' ';
  color col=color(0,random(100,255),random(100,255));
  float vy=random(0.4,2);
  int timer=0;
  int timerMax=int(random(5,10));
  Agent(float _x,float _y,char _c){
     x=round(_x);
     y=round(_y);
     c=_c;
  }
  
  void aff(){
    fill(col);
    text(c,x,y);
    y+=vy;
    
    if(timer>timerMax){  
      timer=0;
      timerMax=int(random(5,10));
      c = char(int(random(127)));
    }
    timer++;
    
    if(y>height){
      y=-30;
    }
  }


}
