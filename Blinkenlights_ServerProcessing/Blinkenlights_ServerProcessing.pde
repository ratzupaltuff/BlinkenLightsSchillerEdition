import hypermedia.net.*;

UDP udp; // define the UDP object

int port = 8881; // the destination port

long previousMillis = 0;
int light = 0;
long interval = 5000;
int flicker = 0;
int held = 0;

boolean transferedsuccessful = false;

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

LightMatrix lightMatrix = new LightMatrix();

void setup() {
  udp = new UDP( this, port); // create a new datagram connection on port 8888
  udp.log( true ); // <– printout the connection activity
  udp.listen( true ); // and wait for incoming message
  //sendudp(on);
  size(1200,900);
  println("Setup finished");
}

void draw() {  // draw() loops forever, until stopped
  background(#FFFFFF);
  for(int i=300;i <=900; i=i+300){
    line(i,0,i,900);
  }
  for(int i=300;i <=900; i=i+300){
    line(0,i,900,i);
  }

  for(int i=0;i <3; i++){
    for(int j=0;j <3; j++){
      fill(lightMatrix.getLight(j+1,i+1).getCurrentColor().getHex());
      rect(i*300,j*300,300,300);
      fill(0,0,0);
      text("IP= "+ lightMatrix.getLight(j+1,i+1).getIpAddr(), i*300+20, j*300+20);
      text("Color= "+ lightMatrix.getLight(j+1,i+1).getCurrentColor().getName(), i*300+20, j*300+32);
    }
  }
}

void keyPressed() {

  if (key == 'f'){
        //sendudp(red.code);
        lightMatrix.getLight(1,2).setColor(red);
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
      lightMatrix.getLight(1,3).setColor(green);
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
          //udp.send(content, ip11 , port);
          delay(1500);
        }
        transferedsuccessful = false;
}
