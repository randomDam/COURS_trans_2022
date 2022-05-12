import oscP5.*;
import netP5.*;

//Server osc
OscP5 server;

void setup(){
  size(800,800);
  server = new OscP5(this,9000);
}

void draw(){
  if(mousePressed){
    ellipse(mouseX,mouseY,30,30);
    //on construit le message
    OscMessage m = new OscMessage("/circle");
    m.add(mouseX);
    m.add(mouseY);
    m.add(color(55,0,66));
    //on construit addresse distante
    NetAddress dam = new NetAddress("192.168.43.255", 9000);
    //on envoie(message,address)
    server.send(m, dam);
  }
  fill(col);
  ellipse(x,y,10,10);
}

//-------------------------------------------------
// réception d'une message
//-------------------------------------------------
int x=0;
int y=0;
color col=color(255);

void oscEvent(OscMessage m) {
    print(" addrpattern: "+m.addrPattern());
    println(" typetag: "+m.typetag());
    if(m.checkAddrPattern("/circle")==true) {
      x = m.get(0).intValue();
      y = m.get(1).intValue();
      col = m.get(2).intValue();
    }
}
//-------------------------------------------------
