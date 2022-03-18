//fonction initial (1 fois)
void setup() {
  //régler la taille de la fenêtre
  size(1200, 800, P2D);
  //fullScreen();
}

//fonction boucle (à l'infinie)
void draw() {
  background(40, 40, 40);
  noFill();
  stroke(0, random(220, 255), 100);
  strokeWeight(100);
  rect(0, 0, width, height);

  strokeWeight(2);
  ellipse(width/2, height/2, 200, 200);

  stroke(255);
  line(0, 0, width, height);
  line(width, 0, 0, height);

  circle(mouseX, mouseY, 40);
  circle(width-mouseX, mouseY, 40);
  circle(width-mouseX, height-mouseY, 40);
  circle(mouseX, height-mouseY, 40);

  strokeWeight(1);
  quad(
    mouseX, mouseY,
    width-mouseX, mouseY,
    width-mouseX, height-mouseY,
    mouseX, height-mouseY);
}
