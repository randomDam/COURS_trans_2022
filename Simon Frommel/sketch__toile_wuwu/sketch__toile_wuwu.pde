String [] titre = {
  "Summer School - Quantum physics"
};

String [] soustitre = {
  "Août 2021"
};


PFont impact;
int index=0;
int index2=0;
PImage planete ;
float ang=0;
PImage stars ;

PGraphics layer1;

void setup () {
  //fullScreen(P2D);
  size(1000, 1000);
  layer1 = createGraphics(3508, 4960);
  //impact = loadFont("Impact-48.vlw");
  impact = createFont("C64_improved_Regular.ttf", 240);

  //frameRate(1000);

  stars = loadImage("stars BG.jpg");
  //stars.resize(width, height);
  planete = loadImage("planete 3.png");
  //planete.resize(planete.width, planete.height);

  layer1.beginDraw();
  layer1.background(0, 0, 20);
  layer1.imageMode(CORNER);
  layer1.image(stars, 0, 0, layer1.width, layer1.height);
  layer1.endDraw();
}

void draw() {
  background(150);

  layer1.beginDraw();
  layer1.fill(100, 114, 255);
  layer1.ellipse(random(layer1.height), random(layer1.width), 2, 2);
  //bleu

  layer1.fill(248, 250, 154);
  layer1.ellipse(random(layer1.height), random(layer1.width), 3, 3);
  //jaune

  float r = random(layer1.height/4);

  layer1.tint(255, random(255));
  layer1.image(planete,
    random(layer1.width), random(layer1.height),
    r, r);

  layer1.textFont(impact);
  /* if (frameCount%2==0){
   text(frameCount,random(width),random(height));
   }
   */

  layer1.fill(141, 13, 188);
  layer1.noStroke();
  layer1.text(titre[index], pWidth(5), pHeight(10));

  layer1.fill(185, 120, 230);
  layer1.text(soustitre[index2], pWidth(5), pHeight(20));
  layer1.endDraw();

  /*pushMatrix();
   
   rotate(ang*2);
   translate(200,200);
   
   // fill(0,0,0);
   // ellipse(10,10,100,100);
   // translate(150,0);
   
   
   imageMode(CENTER);
   image(planete, 350, 350);
   
   popMatrix();
   ang+=0.1;
   */

  image(layer1, 20, 20, layer1.width/6, layer1.height/6);
  println("draw");
}

void keyPressed() {
  println(key+" "+keyCode);
  if (key=='s') {
    layer1.save("exporte/image"+frameCount+".png");
  }
}

//---------------------------------------------
//fonction de pourcentage
//---------------------------------------------
float pWidth(float pour){
  return layer1.width*pour/100;
}
float pHeight(float pour){
  return layer1.height*pour/100;
}
