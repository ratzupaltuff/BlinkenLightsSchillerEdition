#include <Arduino.h>
#include <WiFiUdp.h> // ursprünglich WifiUDP ob das klappt?
#include <ESP8266WiFi.h>
#include "config.h"


// wifi connection variables
const char* ssid = WiFi_SSID;
const char* password = WiFi_PASSWD;

// UDP variables
//unsigned int localPort = UDP_Port;

// connect to wifi – returns true if successful or false if not
boolean connectWifi(){
  boolean state = true;
  int i = 0;

  WiFi.begin(ssid, password);

  #if(Debugmode)
    Serial.println("");
    Serial.println("Connecting to WiFi");
  #endif

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    #if(Debugmode)
      Serial.print(".");
    #endif
    if (i > 10){
      state = false;
      break;
    }
    i++;
  }

  #if(Debugmode)
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
  #endif

  return state;
}


// UDP shit following:

// connect to UDP – returns true if successful or false if not
// doesnt work in another failed
/*
boolean connectUDP(WiFiUDP UDP){
  boolean state = false;

  #if(Debugmode)
    Serial.println("");
    Serial.println("Connecting to UDP");
  #endif

  if(UDP.begin(localPort) == 1){
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
*/
