public class Marek extends Animation{

String name;
//int col=3;
//int row=3;

 public Marek(String name){
 super(name);
}

public void mareksAnimation(){
 
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
        delay (10000);

      }
  }
}
  

  
  public void animation1(){
 
  //einschalten
    initializeOneColor(99);
    
    //Orange setzen
    initializeOneColor(1);
  
  for(int k=0; k<=10;k++){
  
   //ausschalten
    initializeOneColor(22);
    
  // Linke Spalte einschalten
  for (int i = 1; i<=3; i++){
    lightMatrix.getLight(i,1).setColor(new Color (99));
  }
  
  
  // Absenden
   setMatrix();
   delay(200);
   
   // Mittlere Spaltee einschalten
   for (int i = 1; i<=3; i++){
    lightMatrix.getLight(i,2).setColor(new Color (99));
  }
  
// Rest schwarz setzen
  for (int i = 1; i<=3; i++){
    lightMatrix.getLight(i,1).setColor(new Color (22));
   }
   for (int i = 1; i<=3; i++){
    lightMatrix.getLight(i,3).setColor(new Color (22));
   }
     
  // Absenden
  setMatrix();
  delay(200);
 
  
    // Rechte Spalte einschalten
   for (int i = 1; i<=3; i++){
    lightMatrix.getLight(i,3).setColor(new Color (99));
  }
  
// Rest schwarz setzen
 for (int i = 1; i<=3; i++){
    for (int j = 1; j<=2; j++){ 
    lightMatrix.getLight(i,j).setColor(new Color (22));
   }
  }
     
  // Absenden
  setMatrix();
  delay(200); 
  
  
  }
  
 
  } 
  
  
  
  
  /* Einzelne Lampen setzen
  lightMatrix.getLight(1,1).setColor(new Color (1));
  lightMatrix.getLight(1,1).sendCurrentColor();
  delay (1000);
  */


}
