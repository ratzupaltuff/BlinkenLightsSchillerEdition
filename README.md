# BlinkenLightsSchillerEdition
BlinkenLight Project with NodeMCU as a Client and Server written in Processing

#goal#
The goal of the project is to control several lights to use them like a huge Screen on a house front. 
The Project is inspired by the BlinkenLichten Project: http://blinkenlights.net/blinkenlights


The infrastructure is divided in one server and several clients with connected (via IR) lights. 

#lights#
Simple IR-conrollable lights were used. 
The client is sending IR-signals with a connected IR-LED but the client doesn't know wether the color
change was successful or not. But usually there are no problems.

#clients#
A NodeMCU v0.1 is acting as a client. The source code is in c++.
The NodeMCU's are connecting theirselfes to WiFi-AP's and they get the colorchange notifications via udp.

#server#
The Server is running processing 5. It will be available as Android and PC application. 
The Server knows the location of every single light/NodeMCU and connects directly to them.
Information about which light displays which color is stored in an two dimensional array. 
The NodeMCU doesn't know if the 

