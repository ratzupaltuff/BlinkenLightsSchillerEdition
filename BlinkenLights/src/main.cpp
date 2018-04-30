#include <Arduino.h>
#include <WiFiUdp.h> // ursprünglich WifiUDP ob das klappt?
#include <ESP8266WiFi.h>
#include <IRsend.h>
#include "WiFiConnection.h"
#include "config.h"

IRsend irsend(IR_Led_Pin); //an IR led is connected to GPIO pin D1 / 5

boolean wifiConnected = false;

WiFiUDP UDP;
boolean udpConnected = false;
char packetBuffer[UDP_TX_PACKET_MAX_SIZE]; //buffer to hold incoming packet,


boolean debugmode = Debugmode;  //if set to false, serial connection is disabled

boolean connectUDP(){
  boolean state = false;

  #if(Debugmode)
    Serial.println("");
    Serial.println("Connecting to UDP");
  #endif

  if(UDP.begin(UDP_Port) == 1){
    #if(Debugmode)
      Serial.println("Connection successful");
    #endif
    state = true;
  }else{
    #if(Debugmode)
      Serial.println("Connection failed");
    #endif
  }
  return state;
}

void setup() {      //Setup loop
  // Initialise Serial connection
  #if(Debugmode)
    Serial.begin(115200);
  #endif

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
  irsend.begin();
}

void loop() {    //main program
  // check if the WiFi and UDP connections were successful
  if(wifiConnected){
    if(udpConnected){

      // if there’s data available, read a packet
      int packetSize = UDP.parsePacket();
      Serial.print("packet");
      if(packetSize){


        //print information about packet
        #if(Debugmode)
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
        #endif

        // read the packet into packetBufffer
        UDP.read(packetBuffer,UDP_TX_PACKET_MAX_SIZE);

        int integerValue = (int) strtol(packetBuffer, 0, 16);
        for (int i = 0; i < 6; i++) {
          irsend.sendNEC(integerValue, 32);
          delay(40);
        }

        #if(Debugmode)
        //Display content of packet
          Serial.print("Contents: { Hex: ");
          Serial.print(packetBuffer);
          Serial.print(", Int: ");
          Serial.print(integerValue);
          Serial.print("}\n");
        #endif

        // send a reply, to the IP address and port that sent us the packet we received
        UDP.beginPacket(UDP.remoteIP(), UDP.remotePort());
        UDP.write(packetBuffer);
        UDP.endPacket();
      }
      delay(10);
    }
  }
}
