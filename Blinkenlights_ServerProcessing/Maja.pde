
public class Maja extends Animation{

String name;
//int col=3;
//int row=3;

public Maja(String name){
  super(name);
}

public void majasAnimation(){
 // animation0();
  animation();
 // animation2();
 // animation3();
 setAllWhite();
}

public void animation(){
  int i=15;
  allOn();
  initializeOneColor(8);
  setMatrix();
  allOff();
  
 for (int iamthecountdownbtches = 11; iamthecountdownbtches >= 0; iamthecountdownbtches--)
 {
  
   lightMatrix.getLight(1, 1).setColor(new Color (99));
   lightMatrix.getLight(3, 1).setColor(new Color (99));
   lightMatrix.getLight(1, 3).setColor(new Color (99));
   lightMatrix.getLight(3, 3).setColor(new Color (99));
   
   setMatrix();
   
 
   
   delay(4000);
   allOff();
     lightMatrix.getLight(2, 2).setColor(new Color (99));
     lightMatrix.getLight(2,2).sendCurrentColor();
     delay(120);
     lightMatrix.getLight(2, 2).setColor(new Color (8));
     lightMatrix.getLight(2,2).sendCurrentColor();
     delay(4000);
     

      }
      
      for ( int dudeyouneedme = 0; dudeyouneedme <= 2; dudeyouneedme++)
      {
      
      //the snake comes to light
      lightMatrix.getLight(1, 1).setColor(new Color (99));
      lightMatrix.getLight(1, 2).setColor(new Color (99));
      lightMatrix.getLight(1, 3).setColor(new Color (99));
      lightMatrix.getLight(2, 3).setColor(new Color (99));
      lightMatrix.getLight(2, 2).setColor(new Color (99));
      lightMatrix.getLight(2, 1).setColor(new Color (99));
      lightMatrix.getLight(3, 1).setColor(new Color (99));
      lightMatrix.getLight(3, 2).setColor(new Color (99));
      lightMatrix.getLight(3, 3).setColor(new Color (99));
      
      setMatrix();
      delay(100);
      
      //the snake crawls back
      lightMatrix.getLight(3, 3).setColor(new Color (99));
      lightMatrix.getLight(3, 2).setColor(new Color (99));
      lightMatrix.getLight(3, 1).setColor(new Color (99));
      lightMatrix.getLight(2, 1).setColor(new Color (99));
      lightMatrix.getLight(2, 2).setColor(new Color (99));
      lightMatrix.getLight(2, 3).setColor(new Color (99));
      lightMatrix.getLight(1, 3).setColor(new Color (99));
      lightMatrix.getLight(1, 2).setColor(new Color (99));
      lightMatrix.getLight(1, 1).setColor(new Color (99));
      
      setMatrix();
      delay(200);
      
      }
      
     }
}
