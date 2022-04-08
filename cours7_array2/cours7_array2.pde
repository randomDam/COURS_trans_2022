String [] sayHello = {
  "Hello",
  "Salut",
  "Guten tag",
  "Ciao",
  "Tére",
  "Ola",
  "Annyeonghaseyo"
};

PFont police;
int index=0;

void setup() {
  size(800,800);
  police = loadFont("CoreSansN97CnBlack-48.vlw");
  frameRate(10);
  background(0);
}

void draw(){
  textFont(police);
  fill(random(255));
  text(sayHello[index],random(width),random(height));
  
  index++;
  if(index>=sayHello.length){
    index=0;
  }
}
