import hypermedia.net.*;
// Processing UDP example to send and receive binary data
// press f to toggel between LED flickering twice per second or not
// the LED will illuminate when any other key is held down and
// turn back off when the key is released.

UDP udp; // define the UDP object

String ip = "192.168.3.139"; // the remote IP address
int port = 8881; // the destination port

long previousMillis = 0;
int light = 0;
long interval = 5000;
int flicker = 0;
int held = 0;
boolean transferedsuccessful = false;

String on = "0xF7C03F";
String off = "0xF740BF";
String lower = "0xF7807F";
String brighter = "0xF700FF";
String red = "0xF720DF"; 
String green = "0xF7A05F";
String blue = "0xF7609F";
String white = "0xF7E01F";
String lightred = "0xF710EF";
String orange = "0xF730CF";
String lightorange = "0xF708F7";
String yellow = "0xF728D7";
String lightgreen = "0xF7906F";
String lightbluegreen = "0xF7B04F";
String darkerbluegreen = "0xF78877";
String darkbluegreen = "0xF7A857";
String lightblue = "0xF750AF";
String violet = "0xF7708F";
String lightviolet = "0xF748B7";
String pink = "0xF76897";
String flash = "0xF7D02F";
String strobe = "0xF7F00F";
String fade = "0xF7C837";
String smooth = "0xF7E817";


void setup() {
  udp = new UDP( this, port); // create a new datagram connection on port 8888
  udp.log( true ); // <– printout the connection activity
  udp.listen( true ); // and wait for incoming message
  sendudp(on);
  println("Setup finished");
  
}

/*void draw(){
  if (flicker == 1){
    if (previousMillis < millis()-interval){
      previousMillis = previousMillis + interval;
        if (light == 0){
            //convertAndSend(red);
       //     udp.send(message, ip , 8888);
            light = 1;
        }
        else { 
            //convertAndSend(green);
       //     udp.send(on, ip , port);
            light = 0;
        }
    }
  }
}
*/
void draw(){
}

void keyPressed() {

  if (key == 'f'){
    //if (flicker == 1){
      //flicker = 0;
      
        sendudp(red);
      
      //light = 0;
    //}
    //else{
    //flicker = 1;
    //}
  } /*else {
    sendudp(yellow);
  }*/
  //else {
    //if (flicker == 0 && held == 0){
      //udp.send(green, ip , port);
      //held = 1;
    //}
  //}
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
/*
void convertAndSend(String message) {
       println(message);
       udp.send(message, ip , port);
}*/
void sendudp(String content){
        println("Tried to send: --> "+ content);
        while(!transferedsuccessful){
          udp.send(content, ip , port);
          delay(1500);
        }
        transferedsuccessful = false;
}
