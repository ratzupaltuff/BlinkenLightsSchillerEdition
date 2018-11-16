public class Lars extends Animation{

String name;
//int col=3;
//int row=3;


public Lars(String name){
  super(name);
}

public void larsAnimation(){
 // animation0();
  animation();
 // animation2();
 // animation3();
 setAllWhite();
}

public void animation(){
  int i=15;
  for (int col= 3; col>=1; col--){
        for(int row=3; row>=1;row--){
        lightMatrix.getLight(col, row).setColor(new Color (i));
        lightMatrix.getLight(col,row).sendCurrentColor();
        delay (3000);

      }
  }
}
}
