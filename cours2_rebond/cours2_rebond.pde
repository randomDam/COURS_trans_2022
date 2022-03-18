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
  rect(pruneX,pruneY,10,10);
  pruneX = pruneX + vitX;
  pruneY = pruneX + vitY;
  
  if(pruneX > width){
    vitX = vitX - 1;
  }
  if (pruneX < 0){
    vitX = vitX - 1;
  }
  if(pruneY > height){
    vitY = vitY - 1;
  }
  if(pruneY < 0){
    vitY = vitY - 1;
  }  
}
