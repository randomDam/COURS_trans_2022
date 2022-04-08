
PImage lac;

void setup() {
  //size(800, 800);
  fullScreen(P2D);
  lac=loadImage("kazakhstan-lac.jpg");
  lac.resize(width, height);
}
float timer=0;

void draw() {
  //background(255);
  image(lac, 0, 0);
  
  //timer+=1;
  timer+=0.01;

  for (int x=0; x<lac.width; x+=10) {
    for (int y=0; y<lac.height; y+=10) {
      color col = lac.get(x, y);
      float lum = brightness(col);
      push();
      //fill(0);
      //fill(lum);
      noStroke();
      
      //float taille = map(lum,0,255,0,map(timer,0,width,0,PI*2));
      float taille = map(lum,0,255,0,sin(timer)*PI);
      stroke(0);
      fill(col);
      translate(x,y);
      rotate(taille);
      rect(0, 0, 100, 5);
      
      //strokeWeight(taille);
      
      //line(x,y,x+10,y+10);
      pop();
    }
  }
}
