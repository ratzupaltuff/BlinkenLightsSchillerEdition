class LightMatrix {
  private int sizeX;
  private int sizeY;


  //layout on wall
  String ip11 = "192.168.9.220";   String ip12 = "192.168.12.204";   String ip13 = "192.168.7.96";
  String ip21 = "192.168.5.218";   String ip22 = "192.168.3.143";   String ip23 = "192.168.3.144";
  String ip31 = "192.168.3.145";   String ip32 = "192.168.3.146";   String ip33 = "192.168.3.147";

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
      if(posX<=sizeX && posY<=sizeY){
          return lights[posX-1][posY-1];
      }
      return new Light("127.0.0.1");
  }

}
