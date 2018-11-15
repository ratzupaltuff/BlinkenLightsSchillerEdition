public class Marek extends Animation{

String name;

int shortDelay=120;
//int col=3;
//int row=3;

 public Marek(String name){
 super(name);
}

public void mareksAnimation(){
 
  colorCols();
  strobe();
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
  

  
  public void colorCols(){
 
  for (int i = 1200; i>=120; i=i-100){
    
  
  leftColOneColor(1);
  delay(i);
  midColOneColor(8);
  delay(i)
  rightColOneColor(4);
  delay(i)
  
  
  
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
    lightMatrix.getLight(i,1).setColor(new Color (99));
    setMatrix();
    delay(shortDelay);
  }
}

public void midColOn(){
   for (int i = 1; i<=3; i++){
    lightMatrix.getLight(i,2).setColor(new Color (99));
    setMatrix();
    delay(shortDelay);
  }
}

public void rightColOn(){
  for (int i = 1; i<=3; i++){
    lightMatrix.getLight(i,3).setColor(new Color (99));
    setMatrix();
    delay(shortDelay);
  }
 }
} 
