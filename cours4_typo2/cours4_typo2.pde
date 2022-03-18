
PFont aileron;

void setup() {
  size(800, 800, P2D);
  aileron = loadFont("Aileron-Heavy-48.vlw");
  background(0);
  //frameRate(10);
}

void draw() {
  //background(0);

  if (frameCount%2==0) {

    float x = random(width);
    float y = random(height);

    fill(0);
    text(frameCount, x+10, y+10);

    fill(
      map(x, 0, width, 0, 255),
      0,
      map(y, 0, height, 0, 255)
      );
    textFont(aileron);


    text(frameCount, x, y);
  }

  //text(frameCount,100,100);
  if (frameCount==1004) {
    save("export/image"+frameCount+".png");
  }
}

void keyPressed() {
  println(key+"   "+keyCode);
  if (key=='s') {
    save("export/image"+frameCount+".png");
  }
}
