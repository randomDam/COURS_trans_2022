color [] tabCouleur = {
  color(40, 0, 0),
  color(60, 0, 0),
  color(100, 0, 0),
  color(200, 0, 0),
  color(250, 0, 0)
};
int [] tabSize = {10, 100, 500, 80, 10};
int index=0;

void setup() {
  size(800, 800);
  frameRate(20);
  println(tabCouleur.length);
}

void draw() {
  fill(tabCouleur[index]);
  rect(0, 0, tabSize[index], height/2);

  index=index+1;

  if (index>=tabCouleur.length) {
    index=0;
  }
}
