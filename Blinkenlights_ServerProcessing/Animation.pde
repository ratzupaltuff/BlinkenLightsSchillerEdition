public class Animation{

String name;
//int col=3;
//int row=3;

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

public void animation0(){
  int i=15;
  for (int col= 3; col>=1; col--){
        for(int row=3; row>=1;row--){
        lightMatrix.getLight(col, row).setColor(new Color (i));
        lightMatrix.getLight(col,row).sendCurrentColor();
        delay (10000);

      }
  }
}
  
public void animation1(){
  for (int j = 0; j<10; j++){
    for (int i=0; i<16;i=i+5){
      for (int col= 3; col>=1; col--){
        for(int row=3; row>=1;row--){
        lightMatrix.getLight(col, row).setColor(new Color (i));
        lightMatrix.getLight(col,row).sendCurrentColor();
        delay(200);
    }
  }
    }}}
}
public void animation2(){
  for (int col = 3; col>=1; col--){
    for (int row=3; row<=1; col--){
      for (int i=15; i<=0; i=i-5){
        lightMatrix.getLight(col, row).setColor(new Color (i));
        lightMatrix.getLight(col,row).sendCurrentColor();
        delay(200);
      }
    }
  }
}
public void animation3(){
  int k = 15;
  for (int col = 3; col>=1; col--){
    for (int row=3; row<=1; col--){
        lightMatrix.getLight(col, row).setColor(new Color (k));
        lightMatrix.getLight(col,row).sendCurrentColor();
         delay (300);
         
       for (int i=15; i<=0; i=i-5){
        lightMatrix.getLight(col, row).setColor(new Color (i));
        lightMatrix.getLight(col,row).sendCurrentColor();
        delay(200);
      }
    }
  }
}
