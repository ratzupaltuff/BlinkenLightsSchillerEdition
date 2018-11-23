public class Denis extends Animation{

String name;
//int col=3;
//int row=3;

public Denis(String name){
  super(name);
}

public void denisAnimation(){
 // animation0();
  animation();
 // animation2();
 // animation3();
 setAllWhite();
}

public void animation(){
 int random = (int)Math.random();
 if(random % 2 ==0){
    for(int i = 0; i <= 15; i=+2){
      for (int col= 3; col>=1; col--){
        for(int row=3; row>=1;row--){
        lightMatrix.getLight(col, row).setColor(new Color (i));
        lightMatrix.getLight(col,row).sendCurrentColor();
        delay (250);
      }
    }
  }
 }
 

  else{
    for(int i = 1; i<=15; i=+2){  
      for (int col= 3; col>=1; col--){
        for(int row=3; row>=1;row--){
          lightMatrix.getLight(col, row).setColor(new Color (i));
          lightMatrix.getLight(col,row).sendCurrentColor();
          delay (250);
     }
    }
   }
   setAllWhite();
  }

}
}
