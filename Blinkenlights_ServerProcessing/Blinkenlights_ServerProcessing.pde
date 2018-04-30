import controlP5.*; // import controlP5 library
import hypermedia.net.*;

GUI gui;

int port = 8881; // the destination port
UDP udp; // define the UDP object

long previousMillis = 0;
int light = 0;
long interval = 5000;
int flicker = 0;
int held = 0;

int start = millis();

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
  //sendudp(on);
  gui = new GUI(this);
  for(int col=1;col<=3;col++){
    for(int row=1;row<=3;row++){
      gui.generateColorSelector((row-1)*height/3,(col)*height/3-height/6,height/3,height/6,col,row);
    }
  }
  size(displayWidth, displayHeight);
  orientation (LANDSCAPE);

  udp = new UDP( this, port); // create a new datagram connection on port 8888
  //udp.log( true ); // <– printout the connection activity
  //udp.listen( true ); // and wait for incoming message

  /*for(int i=0; i<3;i++){
    for(int j=0; j<3; j++){
      lightMatrix.getLight(j+1,i+1).setColor(white);
    }
  }*/

  println("Setup finished");
}



int dWidth = height;
int quarter = width/4;


void draw() {  // draw() loops forever, until stopped
  background(#FFFFFF);

  for(int i=0;i <3; i++){
    for(int j=0;j <3; j++){
      fill(lightMatrix.getLight(j+1,i+1).getCurrentColor().getHex());
      rect(i*height/3,j*height/3,height/3,height/3);
      fill(0,0,0);
      textSize(height/30);
      text("IP= "+ lightMatrix.getLight(j+1,i+1).getIpAddr(), i*height/3+20, j*height/3+40);
      textSize(height/40);
      text("Color= "+ lightMatrix.getLight(j+1,i+1).getCurrentColor().getName(), i*height/3+20, j*height/3+80);
      }
    }

    if(millis()-start>1000){
      for(int i=0;i <3; i++){
        for(int j=0;j <3; j++){
          lightMatrix.getLight(j+1,i+1).sendCurrentColor();
        }
      }
      start = millis();
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

void controlEvent(ControlEvent theEvent) {
 /* events triggered by controllers are automatically forwarded to
 the controlEvent method. by checking the name of a controller one can
 distinguish which of the controllers has been changed.
 */

 /* check if the event is from a controller otherwise you'll get an error
 when clicking other interface elements like Radiobutton that don't support
 the controller() methods
 */
  if(theEvent.isController()) {
    for(int col=1;col<=3;col++){
      for(int row=1;row<=3;row++){
        for (int i=0;i<5;i++){
          for (int j=0;j<3;j++){
            if(theEvent.getController().getName().equals("button"+col+row+j+i)) {
              lightMatrix.getLight(col,row).setColor(new Color(j*5+i));
            }
          }
        }
      }
    }
  }
}

public void selectColors(int theValue) {
  lightMatrix.getLight(1,1).setColor(red);
}



void sendudp(String content){
        println("Tried to send: --> "+ content);
        while(!transferedsuccessful){
          //udp.send(content, ip11 , port);
          delay(1500);
        }
        transferedsuccessful = false;
}
