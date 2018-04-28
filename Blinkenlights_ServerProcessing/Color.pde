class Color {
    String[] colorNames = {"red","orange","orangeyellowgreen","yellowgreen","yellow",
                                                    "green","greenblue","bluegreen","lightbluegreen","lightblue",
                                                    "blue","bluepurple","purpleblue","purple","lightpurple" };
    String[] colorCodes = {"0xF720DF","0xF710EF","0xF730CF","0xF708F7","0xF728D7",
                                                  "0xF7A05F","0xF7906F","0xF7B04F","0xF78877","0xF7A857",
                                                  "0xF7609F","0xF750AF","0xF7708F","0xF748B7","0xF76897"};

    int[] colorHex = {#FF0000,#FF7B00,#FFBB00,#A5FF00,#FFF600,
                                #00FF11,#00FFD8,#00EFFF,#87E5FF,#5AB3FC,
                                #003FFF,#7B00FF,#AA00FF,#E100FF,#FF00E1};

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
            this.hex=#FFFFFF;
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
