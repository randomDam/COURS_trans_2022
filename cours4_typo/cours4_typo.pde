
PFont aileron;

void setup(){
  size(800,800,P2D);
  aileron = loadFont("Aileron-Heavy-48.vlw");
  background(0);
  //frameRate(10);
}

void draw(){
  //background(0);
  fill(random(255),random(255),random(255));
  textFont(aileron);
  
  
  if(frameCount%2==0){
    text(frameCount,random(width),random(height));
  }
  
  //text(frameCount,100,100);
  if(frameCount==1004){
    save("export/image"+frameCount+".png");
  }
  
}

void keyPressed(){
  println(key+"   "+keyCode);
  if(key=='s'){
    save("export/image"+frameCount+".png");
  }
}
