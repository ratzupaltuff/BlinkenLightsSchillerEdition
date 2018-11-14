public class Animation {

String name;
//int col=3;
//int row=3;

public Animation(String name){
  this.name=name;
}

public void allOff(){
   for(int col=3; col>=1;col--){
      for(int row=3; row>=1;row--){
        lightMatrix.getLight(col,row).setColor(new Color(22));
        lightMatrix.getLight(col,row).sendCurrentColor();
          delay(200);
      }
   }
}

public void allOn(){
   for(int col=3; col>=1;col--){
      for(int row=3; row>=1;row--){
        lightMatrix.getLight(col,row).setColor(new Color(99));
        lightMatrix.getLight(col,row).sendCurrentColor();
          delay(200);
      }
   }
}

public void animation(){
allOn();

 for(int j = 0; j<10; j++){
  for(int i=0; i<6; i=i+5){
    //Color red = new Color(i);
    for(int col=3; col>=1;col--){
      for(int row=3; row>=1;row--){
        lightMatrix.getLight(col,row).setColor(new Color(i));
        lightMatrix.getLight(col,row).sendCurrentColor();
          delay(120);
      }
    }
  }
  //  delay(250);
  }
}


}
