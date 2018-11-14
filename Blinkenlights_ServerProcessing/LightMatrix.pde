class LightMatrix {
  private int sizeX;
  private int sizeY;


  //layout on wall
  String ip11 = "172.17.243.182";   String ip12 = "172.17.104.185";   String ip13 = "172.17.115.140";
  String ip21 = "172.17.28.154";   String ip22 = "172.17.240.96";   String ip23 = "172.17.112.204";
  String ip31 = "172.17.144.34";   String ip32 = "172.17.95.122";   String ip33 = "172.17.93.237";

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
