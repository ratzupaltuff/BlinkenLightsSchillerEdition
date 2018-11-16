public class Miko extends Animation{

String name;
//int col=3;
//int row=3;

public Miko(String name){
  super(name);
}

public void mikosAnimation(){

setAllWhite();
animation();
setAllWhite();
 
}

public void animation(){

   for(int i=1; i<=6; i++){

      setAllWhite();
      numberAnimation(i);
      delay(2000);


       }

      }
      
public numberAnimation(int zahl){

  if(zahl==1){lightMatrix.getLight(2, 2).setColor(new Color (10));
  
              lightMatrix.getLight(2, 2).sendCurrentColor();}
      
  if(zahl==2){lightMatrix.getLight(1, 1).setColor(new Color (10));
              lightMatrix.getLight(3, 3).setColor(new Color (10));
              
              lightMatrix.getLight(1,1).sendCurrentColor();
              lightMatrix.getLight(3,3).sendCurrentColor();}
               
   if(zahl==3){lightMatrix.getLight(1, 1).setColor(new Color (10));
              lightMatrix.getLight(3, 3).setColor(new Color (10));
              lightMatrix.getLight(2, 2).setColor(new Color (10));
              
              lightMatrix.getLight(1,1).sendCurrentColor();
              lightMatrix.getLight(3,3).sendCurrentColor();
              lightMatrix.getLight(2,2).sendCurrentColor();}
               
   if(zahl==4){lightMatrix.getLight(1, 1).setColor(new Color (10));
              lightMatrix.getLight(1, 3).setColor(new Color (10));
              lightMatrix.getLight(3, 1).setColor(new Color (10));
              lightMatrix.getLight(3, 3).setColor(new Color (10));
              
              lightMatrix.getLight(1,1).sendCurrentColor();
              lightMatrix.getLight(1,3).sendCurrentColor();
              lightMatrix.getLight(3,1).sendCurrentColor();
              lightMatrix.getLight(3,3).sendCurrentColor();}
               
  if(zahl==5){lightMatrix.getLight(1, 1).setColor(new Color (10));
              lightMatrix.getLight(1, 3).setColor(new Color (10));
              lightMatrix.getLight(3, 1).setColor(new Color (10));
              lightMatrix.getLight(3, 3).setColor(new Color (10));
              lightMatrix.getLight(2, 2).setColor(new Color (10));
              
              lightMatrix.getLight(1,1).sendCurrentColor();
              lightMatrix.getLight(1,3).sendCurrentColor();
              lightMatrix.getLight(3,1).sendCurrentColor();
              lightMatrix.getLight(3,3).sendCurrentColor();
              lightMatrix.getLight(2,2).sendCurrentColor();}
               
  if(zahl==6){lightMatrix.getLight(1, 1).setColor(new Color (10));
              lightMatrix.getLight(1, 2).setColor(new Color (10));
              lightMatrix.getLight(1, 3).setColor(new Color (10));
              lightMatrix.getLight(3, 1).setColor(new Color (10));
              lightMatrix.getLight(3, 2).setColor(new Color (10));
              lightMatrix.getLight(3, 3).setColor(new Color (10));
              
              lightMatrix.getLight(1,1).sendCurrentColor();
              lightMatrix.getLight(1,2).sendCurrentColor();
              lightMatrix.getLight(1,3).sendCurrentColor();
              lightMatrix.getLight(3,1).sendCurrentColor();
              lightMatrix.getLight(3,2).sendCurrentColor();
              lightMatrix.getLight(3,3).sendCurrentColor();}
      
      
      }
  }

  


// lightMatrix.getLight(col, row).setColor(new Color (i));
//        lightMatrix.getLight(col,row).sendCurrentColor();
//  delay (10000);
