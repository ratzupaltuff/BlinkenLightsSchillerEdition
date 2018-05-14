public class Animation{

String name;

public Animation(String name){
  this.name=name;
}

public void animation(){

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
