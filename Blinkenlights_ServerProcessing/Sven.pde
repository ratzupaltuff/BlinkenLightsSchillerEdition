public class Sven extends Animation{

String name;
//int col=3;
//int row=3;

public Sven(String name){
  super(name);
}

public void svensAnimation(){
 // animation0();
  animation();
  setAllWhite();
  
 // animation2();
 // animation3();
}

public void animation(){
  int i=15;
  for (int col= 3; col>=1; col--){
        for(int row=3; row>=1;row--){
        lightMatrix.getLight(col, row).setColor(new Color (i));
        lightMatrix.getLight(col,row).sendCurrentColor();
        delay (10000);

      }
  }
}
  

}
