public class Alexandra extends Animation{

String name;
//int col=3;
//int row=3;

public Alexandra(String name){
  super(name);
}


public void alexandrasAnimation(){
 // animation0();
 // delay(5000);
  animation1();
  delay(5000);
//  animation2();
  delay(5000);
 // animation3();
   delay(5000);
 //animation4();
   delay(5000);
 //animation5();
   delay(5000);
 //animation6();
   delay(5000);
 setAllWhite();
 
}

/*public void animation0(){
  int i=15;
  for (int col= 3; col>=1; col--){
        for(int row=3; row>=1;row--){
        lightMatrix.getLight(row, col).setColor(new Color (i));
        lightMatrix.getLight(row,col).sendCurrentColor();
        delay (200);

      }
  }
  
}*/
  
public void animation1(){
  for (int j = 0; j<10; j++){
    for (int i=0; i<16;i=i+5){
      for (int col= 3; col>=1; col--){
        for(int row=3; row>=1;row--){
          lightMatrix.getLight(row, col).setColor(new Color (i));
          lightMatrix.getLight(row,col).sendCurrentColor();

        delay(200);
        }
      }
    }
  }
  
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


        setAllWhite();
         
       for (int i=15; i<=0; i=i-5){
        lightMatrix.getLight(col, row).setColor(new Color (i));
        lightMatrix.getLight(col,row).sendCurrentColor();
        delay(200);
      }
    }
  }

}
  public void animation4(){
    
        for (int i=0;i<16;i++){
          initializeOneColor(9);
          lightMatrix.getLight(i,i).sendCurrentColor();
          delay (120);
          
          for (int j=16; j<22;j++){
            initializeOneColor(j);
            lightMatrix.getLight(i,i).sendCurrentColor();

            delay(200);
            }
          }
          setAllWhite();
      }
        
    public void animation5(){ //random colors and animations, random places
    
        int i=0;
    for (int j=0; j<=10; j++){
      float rcol=random(4);
      int col=int(rcol);
      
      float rrow=random(4);
      int row=int(rrow);
      
       lightMatrix.getLight(col, row).setColor(new Color (i));
       lightMatrix.getLight(col,row).sendCurrentColor();
       
       float ri=random(22);
       j=(int)ri;
        
        delay(120);
       }
     setAllWhite(); 
      
    }
    
    public void animation6(){
      for (int j=0; j<=5; j++){
        for(int i=6; i<22; i++){
          for (int row=1; row<=3; row++){
            for (int col=1; col<=3; col++){
                lightMatrix.getLight(col, row).setColor(new Color (i));
                if (col==3){
                    for (col=1; col<=3;col++){
                       lightMatrix.getLight(col,row).sendCurrentColor();
                       lightMatrix.getLight(col,row).sendCurrentColor();
                        lightMatrix.getLight(col,row).sendCurrentColor();
                            delay (200);
                    }                  }
       
                }
            }
          }
       } 
       setAllWhite();
     }
}
