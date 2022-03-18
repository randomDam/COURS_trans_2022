PImage bob;

void setup(){
  size(800,800,P2D);
  bob = loadImage("bob.png");
  bob.resize(bob.width/2,bob.height/2);
  
  
  frameRate(100);
}
float ang=0;

void draw(){

  //if(mousePressed){
    //tint(random(255),random(255),random(255));
    //imageMode(CENTER);
    //image(bob,random(width),random(height),random(300),random(300));
  //}
  
  pushMatrix();
  
  translate(width/2,height/2);
  rotate(ang);
  rect(0,0,100,50);
  translate(200,0);
  rotate(ang*4);  
  rect(0,0,100,50);
  translate(100,0);
  rotate(ang*8);  
  rect(0,0,100,50);
  
  imageMode(CENTER);
  image(bob,0,0);
  
  popMatrix();
  
  ang+=0.01;
}
