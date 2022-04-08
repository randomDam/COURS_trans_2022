
Agent [] tabAgent=new Agent[5000];

void setup(){
  //size(800,800,P2D);
  fullScreen(P2D);
  for(int i=0;i<tabAgent.length;i++){
    char car = char(int(random(127)));
    tabAgent[i]=new Agent(random(width),random(height),car);
  }
}

void draw(){
  noStroke();
  fill(0,map(mouseX,0,width,0,100));
  rect(0,0,width,height);
  for(int i=0;i<tabAgent.length;i++){
    tabAgent[i].aff();
  }
}
