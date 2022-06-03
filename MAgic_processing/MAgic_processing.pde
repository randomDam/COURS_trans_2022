import processing.serial.*;

Serial myPort;    // The serial port
String inString;  // Input string from serial port
int lf = 10;      // ASCII linefeed

void setup() {
  size(1600, 900);
  // You'll need to make this font with the Create Font Tool

  printArray(Serial.list());

  myPort = new Serial(this, Serial.list()[0], 115200);
  myPort.bufferUntil(lf);
  background(0);
}
float x=0;
float y=0;
float lastfx=0;
float lastfy=0;

void draw() {
  //background(0);
  
  float fx = map(x,0,1024,0,width);
  float fy = map(y,0,1024,0,height);
  
  if(frameCount>10){
    strokeWeight(10);
    stroke(255);
    line(fx,fy,lastfx,lastfy);
  }
  
  lastfx=fx;
  lastfy=fy;
}

void serialEvent(Serial p) {
  inString = p.readString();
  //println(inString);
  String [] val = split(inString, ",");
  if(val.length==2){
    x = float(val[0]);
    y = float(val[1]);
  }
}
