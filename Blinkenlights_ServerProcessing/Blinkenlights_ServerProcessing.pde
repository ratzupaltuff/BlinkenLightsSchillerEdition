import hypermedia.net.*;
// Processing UDP example to send and receive binary data
// press f to toggel between LED flickering twice per second or not
// the LED will illuminate when any other key is held down and
// turn back off when the key is released.

UDP udp; // define the UDP object

//layout on wall
String ip11 = "192.168.3.139";   String ip12 = "192.168.3.139";   String ip13 = "192.168.3.139"; 
String ip21 = "192.168.3.139";   String ip22 = "192.168.3.139";   String ip23 = "192.168.3.139";
String ip31 = "192.168.3.139";   String ip32 = "192.168.3.139";   String ip33 = "192.168.3.139"; 

int port = 8881; // the destination port

long previousMillis = 0;
int light = 0;
long interval = 5000;
int flicker = 0;
int held = 0;
boolean transferedsuccessful = false;

//layout on sender 
String brighter = "0xF700FF";        String lower = "0xF7807F";            String off = "0xF740BF";           String on = "0xF7C03F";

String red = "0xF720DF";             String green = "0xF7A05F";            String blue = "0xF7609F";          String white = "0xF7E01F";

String lightred = "0xF710EF";        String lightgreen = "0xF7906F";       String lightblue = "0xF750AF";     String flash = "0xF7D02F";

String orange = "0xF730CF";          String lightbluegreen = "0xF7B04F";   String violet = "0xF7708F";        String strobe = "0xF7F00F";

String lightorange = "0xF708F7";     String darkerbluegreen = "0xF78877";  String lightviolet = "0xF748B7";   String fade = "0xF7C837";

String yellow = "0xF728D7";          String darkbluegreen = "0xF7A857";    String pink = "0xF76897";          String smooth = "0xF7E817";




void setup() {
  udp = new UDP( this, port); // create a new datagram connection on port 8888
  udp.log( true ); // <– printout the connection activity
  udp.listen( true ); // and wait for incoming message
  sendudp(on);
  println("Setup finished");
  
}

void draw(){
}

void keyPressed() {

  if (key == 'f'){
        sendudp(red);
  } 
}

void rainbow(){
  for (int i=1600000; i<170000000; i=i+10){
    sendudp(green);
  }
}

void keyReleased(){
  if (key != 'f'){
    if (flicker == 0){
      sendudp(green);
      held = 1;
    }
  }
}

// void receive( long[] data ) { // <– default handler
void receive( byte[] data, String ip, int port ) { // <– extended handler
  for(int i=0; i < data.length; i++){
    print(char(data[i]));
    }
  println(" --> received");
  transferedsuccessful = true;
}

void sendudp(String content){
        println("Tried to send: --> "+ content);
        while(!transferedsuccessful){
          udp.send(content, ip11 , port);
          delay(1500);
        }
        transferedsuccessful = false;
}
