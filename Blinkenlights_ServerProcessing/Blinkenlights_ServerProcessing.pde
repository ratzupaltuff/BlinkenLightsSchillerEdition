import hypermedia.net.*;
// Processing UDP example to send and receive binary data
// press f to toggel between LED flickering twice per second or not
// the LED will illuminate when any other key is held down and
// turn back off when the key is released.

UDP udp; // define the UDP object

//layout on wall
String ip11 = "192.168.3.139";   String ip12 = "192.168.3.140";   String ip13 = "192.168.3.141";
String ip21 = "192.168.3.142";   String ip22 = "192.168.3.143";   String ip23 = "192.168.3.144";
String ip31 = "192.168.3.145";   String ip32 = "192.168.3.146";   String ip33 = "192.168.3.147";

String[][] ipArray = {  {ip11,ip12,ip13},
                         {ip21,ip22,ip23},
                         {ip31,ip32,ip33}  };

Light light11 = new Light(ip11);
Light light12 = new Light(ip12);
Light light13 = new Light(ip13);

Light light21 = new Light(ip21);
Light light22 = new Light(ip22);
Light light23 = new Light(ip23);

Light light31 = new Light(ip31);
Light light32 = new Light(ip32);
Light light33 = new Light(ip33);


int port = 8881; // the destination port

//Light l=new Light(ip11);

long previousMillis = 0;
int light = 0;
long interval = 5000;
int flicker = 0;
int held = 0;
boolean transferedsuccessful = false;

//layout on sender
/*
String brighter = "0xF700FF";        String lower = "0xF7807F";            String off = "0xF740BF";           String on = "0xF7C03F";

String red = "0xF720DF";             String green = "0xF7A05F";            String blue = "0xF7609F";          String white = "0xF7E01F";

String lightred = "0xF710EF";        String lightgreen = "0xF7906F";       String lightblue = "0xF750AF";     String flash = "0xF7D02F";

String orange = "0xF730CF";          String lightbluegreen = "0xF7B04F";   String violet = "0xF7708F";        String strobe = "0xF7F00F";

String lightorange = "0xF708F7";     String darkerbluegreen = "0xF78877";  String lightviolet = "0xF748B7";   String fade = "0xF7C837";

String yellow = "0xF728D7";          String darkbluegreen = "0xF7A857";    String pink = "0xF76897";          String smooth = "0xF7E817";
*/
//"red","orange","orangeyellowgreen","yellowgreen","yellow",
    //                                              "green","greenblue","bluegreen","lightbluegreen","lightblue",
    //                                              "blue","bluepurple","purpleblue","purple","lightpurple"


Color red = new Color(0);
Color orange = new Color(1);
Color orangeyellowgreen = new Color(2);
Color yellowgreen = new Color(3);
Color yellow = new Color(4);

Color green = new Color(5);
Color greenblue = new Color(6);
Color bluegreen = new Color(7);
Color lightbluegreen = new Color(8);
Color lightblue = new Color(9);

Color blue = new Color(10);
Color bluepurple = new Color(11);
Color purpleblue = new Color(12);
Color purple = new Color(13);
Color lightpurple = new Color(14);

Color white = new Color(15);



void setup() {
  udp = new UDP( this, port); // create a new datagram connection on port 8888
  udp.log( true ); // <– printout the connection activity
  udp.listen( true ); // and wait for incoming message
  //sendudp(on);
  size(1200,900);
  println("Setup finished");
}

void draw() {  // draw() loops forever, until stopped
  for(int i=300;i <=900; i=i+300){
    line(i,0,i,900);
  }
  for(int i=300;i <=900; i=i+300){
    line(0,i,900,i);
  }
  for(int i=0;i <3; i++){
    for(int j=0;j <3; j++){
      fill(0,0,0);
      text("IP= "+ ipArray[j][i], i*300+20, j*300+20);
    }
  }

}

void keyPressed() {

  if (key == 'f'){
        //sendudp(red.code);
        fill(red.hex);
        rect(0,0,300,300);
  }
}

void rainbow(){
  for (int i=1600000; i<170000000; i=i+10){
    sendudp(green.code);
  }
}

void keyReleased(){
  if (key != 'f'){
    if (flicker == 0){
      //sendudp(green);
      fill(green.hex);
      rect(0,0,300,300);
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
