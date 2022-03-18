
//fonction initial (1 fois)
void setup() {
  //régler la taille de la fenêtre
  size(800, 800);
}

//foonction boucle (à l'infinie)
void draw(){
  fill(random(255),random(255),random(255));
  //rectangle (x,y,largeur,hauteur)
  rect(random(400),random(800),random(200),random(200),100);

  rect(mouseX,mouseY,random(200),random(200),100);
}
