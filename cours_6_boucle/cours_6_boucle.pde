void setup() {
  size(800, 800,P2D);
}


void draw() {

  noStroke();
  
  for (int i=0; i<width; i+=10) {
    for (int j=0; j<height; j+=10) {
      fill(random(255),random(255),random(255));
      rect(i, j, 10, 100);
    }
  }
}
