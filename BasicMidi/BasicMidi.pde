//Import the library
import themidibus.*;

//L'objet MidiBus
MidiBus myBus;

//------------------------------------------------------------
// SETUP
//------------------------------------------------------------
void setup() {
  size(800, 400);
  background(0);
  // List all available Midi devices on STDOUT.
  // This will show each device's index and name.
  println("-----------------------------------------");
  MidiBus.list();
  println("-----------------------------------------");
  // Le premier nombre représent le périphérique à selectionner.
  myBus = new MidiBus(this, 1, -1);
}

int pitch=0;
int channel=0;
int velocity=0;

//------------------------------------------------------------
// DRAW
//------------------------------------------------------------
void draw() {
    
  if (pitch>0) {
    fill(255, pitch*40, 0);
    rect(20+pitch*40, 20, 100, 100);
  }
  pitch=0;
}

//------------------------------------------------------------
// Reception d'une touche (on)
//------------------------------------------------------------
void noteOn(int channel, int pitch, int velocity) {
  println("Note On --------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
  this.pitch=pitch;
  this.channel=channel;
  this.velocity=velocity;
}

//------------------------------------------------------------
// Reception d'une touche (off, relaché une touche)
//------------------------------------------------------------
void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff
  println();
  println("Note Off --------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
}

//------------------------------------------------------------
// changement de controller ?
//------------------------------------------------------------
void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  println("Controller Change --------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);
}
