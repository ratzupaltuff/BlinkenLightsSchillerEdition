import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import controlP5.*; 
import hypermedia.net.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Blinkenlights_ServerProcessing extends PApplet {

 // import controlP5 library


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



public void setup() {
  //sendudp(on);
  gui = new GUI(this);
  for(int col=1;col<=3;col++){
    for(int row=1;row<=3;row++){
      gui.generateColorSelector((row-1)*height/3,(col)*height/3-height/6,height/3,height/6,col,row);
    }
  }
  
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


public void draw() {  // draw() loops forever, until stopped
  background(0xffFFFFFF);

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
public void receive( byte[] data, String ip, int port ) { // <– extended handler
  for(int i=0; i < data.length; i++){
    print(PApplet.parseChar(data[i]));
    }
  println(" --> received");
  transferedsuccessful = true;
}

public void controlEvent(ControlEvent theEvent) {
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



public void sendudp(String content){
        println("Tried to send: --> "+ content);
        while(!transferedsuccessful){
          //udp.send(content, ip11 , port);
          delay(1500);
        }
        transferedsuccessful = false;
}
class Color {
    String[] colorNames = {"red","orange","orangeyellowgreen","yellowgreen","yellow",
                                                    "green","greenblue","bluegreen","lightbluegreen","lightblue",
                                                    "blue","bluepurple","purpleblue","purple","lightpurple" };
    String[] colorCodes = {"0xF720DF","0xF710EF","0xF730CF","0xF708F7","0xF728D7",
                                                  "0xF7A05F","0xF7906F","0xF7B04F","0xF78877","0xF7A857",
                                                  "0xF7609F","0xF750AF","0xF7708F","0xF748B7","0xF76897"};

    int[] colorHex = {0xffFF0000,0xffFF7B00,0xffFFBB00,0xffA5FF00,0xffFFF600,
                                0xff00FF11,0xff00FFD8,0xff00EFFF,0xff87E5FF,0xff5AB3FC,
                                0xff003FFF,0xff7B00FF,0xffAA00FF,0xffE100FF,0xffFF00E1};

    String name;
    String code;
    int hex;


    //layout on sender
    /*String brighter = "0xF700FF";        String lower = "0xF7807F";            String off = "0xF740BF";           String on = "0xF7C03F";

    String red = "0xF720DF";             String green = "0xF7A05F";            String blue = "0xF7609F";          String white = "0xF7E01F";

    String lightred = "0xF710EF";        String lightgreen = "0xF7906F";       String lightblue = "0xF750AF";     String flash = "0xF7D02F";

    String orange = "0xF730CF";          String lightbluegreen = "0xF7B04F";   String violet = "0xF7708F";        String strobe = "0xF7F00F";

    String lightorange = "0xF708F7";     String darkerbluegreen = "0xF78877";  String lightviolet = "0xF748B7";   String fade = "0xF7C837";

    String yellow = "0xF728D7";          String darkbluegreen = "0xF7A857";    String pink = "0xF76897";          String smooth = "0xF7E817";
    */

    Color(int colorID){
          hex=0;
          if(0<=colorID && colorID<15){
            this.name=colorNames[colorID];
            this.code=colorCodes[colorID];
            this.hex=colorHex[colorID];
          }
          else if(colorID==15){  //white
            this.name="white";
            this.code="0xF7E01F";
            this.hex=0xffFFFFFF;
          }
          else if(colorID==16){
            this.name="flash";
            this.code="0xF7D02F";
          }
          else if(colorID==17){
            this.name="strobe";
            this.code="0xF7F00F";
          }
          else if(colorID==18){
            this.name="fade";
            this.code="0xF7C837";
          }
          else if(colorID==19){
            this.name="smooth";
            this.code="0xF7E817";
          }
          else if(colorID==20){
            this.name="brighter";
            this.code="0xF700FF";
          }
          else if(colorID==21){
            this.name="darker";
            this.code="0xF7807F";
          }
          else if(colorID==22){
            this.name="off";
            this.code="0xF740BF";
          }
          else{
            this.name="on";
            this.code="0xF7C03F";
          }
    }

    public String getName(){
      return name;
    }
    public String getCode(){
      return code;
    }
    public int getHex(){
        return hex;
    }
}
class Light{
    private String ipAddr;
    private Color currentColor;

    Light(String ipAddr){
        this.ipAddr=ipAddr;
        currentColor=new Color(15);
    }

    public String getIpAddr(){
        return ipAddr;
    }

    public Color getCurrentColor(){
        return currentColor;
    }

    public void setColor(Color c){
        currentColor=c;
    }

    public int getPort(){
      return port;
    }

    public void sendCurrentColor(){
      udp.send(currentColor.getCode(),ipAddr,port);
    }

}
class LightMatrix {
  private int sizeX;
  private int sizeY;


  //layout on wall
  String ip11 = "192.168.12.234";   String ip12 = "192.168.9.220";   String ip13 = "192.168.12.231";
  String ip21 = "192.168.8.243";   String ip22 = "192.168.12.232";   String ip23 = "192.168.12.204";
  String ip31 = "192.168.7.96";   String ip32 = "192.168.2.250";   String ip33 = "192.168.4.246";

  /*String[][] ipArray = {  {ip11,ip12,ip13},
                                 {ip21,ip22,ip23},
                                 {ip31,ip32,ip33}  };*/

  Light light11 = new Light(ip11);  Light light12 = new Light(ip12);  Light light13 = new Light(ip13);
  Light light21 = new Light(ip21);  Light light22 = new Light(ip22);  Light light23 = new Light(ip23);
  Light light31 = new Light(ip31);  Light light32 = new Light(ip32);  Light light33 = new Light(ip33);

  Light[][] lights = {{light11,light12,light13},{light21,light22,light23},{light31,light32,light33}};

  LightMatrix(){
    this.sizeX=3;
    this.sizeY=3;
  }

  public boolean setLightPos(Light light, int posX, int posY){
      if(posX<=sizeX && posY<=sizeY){
          lights[posX][posY]=light;
          return true;
      }
      return false;
  }

  public Light getLight(int posX, int posY){
      if(posX<=sizeX && posY<=sizeY && posX>0 && posY>0){
          return lights[posX-1][posY-1];
      }
      println("Fehler beim Aufruf der Methode getLight, Bedenke; das erste Licht ist 1;1 und nicht 0;0");
      return new Light("127.0.0.1");
  }

}
class GUI {
		ControlP5 cp5;

    GUI(PApplet thePApplet) {
			cp5 = new ControlP5(thePApplet);
      cp5.addButton("Play TicTacToe").setPosition(height+10,10).setSize(width-height-20,80);
      //cp5.addButton("selectColor").setPosition(height+10,100).setSize(width-height-20,80).setLabel("Toggle Colorselection");
		}
    public void generateColorSelector(int x, int y, int w, int h, int col, int row){
      for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 3; j++) {
          cp5.addButton("button"+col+row+j+i)
            .setPosition(x+i*w/5,y+j*h/3)
            .setSize(w/5,h/3)
            .setColorBackground(new Color(j*5+i)
            .getHex())
            .setLabel("");  }
        }

      }

	}
  public void settings() {  size(displayWidth, displayHeight); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Blinkenlights_ServerProcessing" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
