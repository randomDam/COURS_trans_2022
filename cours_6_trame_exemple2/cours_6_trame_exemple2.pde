
PImage lac;

void setup() {
  size(800, 800);
  lac=loadImage("kazakhstan-lac.jpg");
  lac.resize(width, height);
}

void draw() {
  //background(255);
  //image(lac, 0, 0);

  for (int i=0; i<1000; i++) {
    int x=int(random(width));
    int y=int(random(height));

    color bob = lac.get(x, y);
    fill(bob);
    noStroke();
    rect(x, y, random(10), random(10));
  }
}
