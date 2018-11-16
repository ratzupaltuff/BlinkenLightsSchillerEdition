public class Marek extends Animation{

String name;

int shortDelay=120;
//int col=3;
//int row=3;

 public Marek(String name){
 super(name);
}

public void mareksAnimation(){
 
  colorColsandRows();
 // strobe();
  setAllWhite();
  // animation0();
//  animation1();
 // animation2();

}


public void strobe(){
  initializeOneColor(16);
  setMatrix();
  delay(20000);
  
}

public void animation0(){
  int i=15;
  for (int col= 3; col>=1; col--){
        for(int row=3; row>=1;row--){
        lightMatrix.getLight(col, row).setColor(new Color (i));
        lightMatrix.getLight(col,row).sendCurrentColor();
        delay (200);

      }
  }
}
  

  
  public void colorColsandRows(){
 
 
  for (int i=0; i<=5; i++){  
  
  leftColOneColor(1);
  
  midColOneColor(8);
  
  rightColOneColor(4);
 
  } 
  }

public void topRowOneColor(int id){
  allOff();
  topRowOn();
  initializeOneColor(id);
}

public void midRowOneColor(int id){
  allOff();
  midRowOn();
  initializeOneColor(id); 
}

public void bottomRowOneColor(int id){
  allOff();
  bottomRowOn();
  initializeOneColor(id);
}


public void topRowOn(){
  for (int i = 1; i<=3; i++){
    lightMatrix.getLight(i,1).setColor(new Color (99));
    
  }
  setMatrix();
    delay(shortDelay);
}

public void midRowOn(){
   for (int i = 1; i<=3; i++){
    lightMatrix.getLight(i,2).setColor(new Color (99));
    
  }
  setMatrix();
    delay(shortDelay);
}

public void bottomRowOn(){
  for (int i = 1; i<=3; i++){
    lightMatrix.getLight(i,3).setColor(new Color (99));
    
  }
  setMatrix();
    delay(shortDelay);
 }
 public void leftColOneColor(int id){
  allOff();
  leftColOn();
  initializeOneColor(id);
}

public void midColOneColor(int id){
  allOff();
  midColOn();
  initializeOneColor(id); 
}

public void rightColOneColor(int id){
  allOff();
  rightColOn();
  initializeOneColor(id);
}


public void leftColOn(){
  for (int i = 1; i<=3; i++){
    lightMatrix.getLight(1,i).setColor(new Color (99));  
     }
    setMatrix();
    delay(shortDelay);
}

public void midColOn(){
   for (int i = 1; i<=3; i++){
    lightMatrix.getLight(2,i).setColor(new Color (99));
   
  }
   setMatrix();
    delay(shortDelay);
}

public void rightColOn(){
  for (int i = 1; i<=3; i++){
    lightMatrix.getLight(3,i).setColor(new Color (99));
   
  }
  setMatrix();
    delay(shortDelay);
 }
} 
