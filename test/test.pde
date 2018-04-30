import hypermedia.net.*;

int port = 8881; // the destination port
UDP udp; // define the UDP object
Light light1 = new Light("192.168.9.220");
Light light2 = new Light("192.168.9.220");

void setup(){
  udp = new UDP(this, port); // create a new datagram connection on port 8888
  udp.log( true ); // <– printout the connection activity
  udp.listen( true ); // and wait for incoming message
}

void draw(){
  
  light1.sendWhite();
  delay(1000);
  light2.sendBlue();
  delay(1000);
 
  
  
  
}

class Light{
  String ip;
  Light(String ip){
    this.ip = ip;
  }
  void sendWhite(){
    udp.send("0xF7E01F",ip,8881);
  }
  void sendBlue(){
    udp.send("0xF7609F",ip,8881);
  }
}
