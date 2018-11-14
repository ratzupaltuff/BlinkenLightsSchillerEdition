#include <WiFiUdp.h> // ursprünglich WifiUDP ob das klappt?
#include <ESP8266WiFi.h>
#include <IRsend.h> 

IRsend irsend(5); //an IR led is connected to GPIO pin 0

// wifi connection variables
const char* ssid = "Blinkenlights";
const char* password = "blinkenl";
boolean wifiConnected = false;

// UDP variables
unsigned int localPort = 8881;
WiFiUDP UDP;
boolean udpConnected = false;
char packetBuffer[UDP_TX_PACKET_MAX_SIZE]; //buffer to hold incoming packet,


boolean debugmode = true;  //if set to false, serial connection is disabled

void setup() {
  irsend.begin();
  
  // Initialise Serial connection
  if(debugmode){
    Serial.begin(115200);
  }

  // Initialise wifi connection
  wifiConnected = connectWifi();

  // only proceed if wifi connection successful
  if(wifiConnected){
    udpConnected = connectUDP();
    if (udpConnected){
      // initialise pins
      pinMode(2, OUTPUT);
      digitalWrite(2, 0);
    }
  }

  irsend.sendNEC(0xF7E01F, 32);
}

void loop() {
  // check if the WiFi and UDP connections were successful
  if(wifiConnected){
    if(udpConnected){

      // if there’s data available, read a packet
      int packetSize = UDP.parsePacket();
      if(packetSize){
        long startTime = millis();
        
        //print information about packet
        if(debugmode){
          Serial.println("");
          Serial.print("Received packet of size ");
          Serial.println(packetSize);
          Serial.print("From ");
          IPAddress remote = UDP.remoteIP(); 
          
          for (int i =0; i < 4; i++){
            Serial.print(remote[i], DEC);
            if (i < 3){
              Serial.print(".");
            }
          }
        
          Serial.print(", port ");
          Serial.println(UDP.remotePort());
        }

        // read the packet into packetBufffer
        UDP.read(packetBuffer,UDP_TX_PACKET_MAX_SIZE);

        int integerValue = (int) strtol(packetBuffer, 0, 16);
        for (int i = 0; i < 6; i++) {
          irsend.sendNEC(integerValue, 32);
          delay(40);
        }

        if(debugmode){
        //Display content of packet
          Serial.print("Contents: { Hex: ");
          Serial.print(packetBuffer);
          Serial.print(", Int: ");
          Serial.print(integerValue);
          Serial.print("}\n");
        }

        // send a reply, to the IP address and port that sent us the packet we received
        UDP.beginPacket(UDP.remoteIP(), UDP.remotePort());
        UDP.write(packetBuffer);
        UDP.endPacket();
      }
      delay(10);
    }

  }

}


// UDP shit following: 



// connect to UDP – returns true if successful or false if not
boolean connectUDP(){
  boolean state = false;

  if(debugmode){
    Serial.println("");
    Serial.println("Connecting to UDP");
  }

  if(UDP.begin(localPort) == 1){
    if(debugmode){
      Serial.println("Connection successful");
    }
    state = true;
  }else{
    if(debugmode){
      Serial.println("Connection failed");
    }
  }
  return state;
}



// connect to wifi – returns true if successful or false if not
boolean connectWifi(){
  boolean state = true;
  int i = 0;
  
  WiFi.begin(ssid, password);
  
  if(debugmode){
    Serial.println("");
    Serial.println("Connecting to WiFi");
  }
  
  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    if(debugmode){
      Serial.print(".");
    }
    if (i > 10){
      state = false;
      break;
    }
    i++;
  }
  
  if(debugmode){
    if (state){
      Serial.println("");
      Serial.print("Connected to ");
      Serial.println(ssid);
      Serial.print("IP address: ");
      Serial.println(WiFi.localIP());
    } else {
      Serial.println("");
      Serial.println("Connection failed.");
    }
  }
  
  return state;
}
