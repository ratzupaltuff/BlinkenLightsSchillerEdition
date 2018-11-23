public class Animation {

String name;
//int col=3;
//int row=3;

public Animation(String name){
  this.name=name;
}

public void setMatrix(){
  // Information an Matrix senden
  for (int i = 1; i<=3; i++){
    for (int j = 1; j<=3; j++){ 
      lightMatrix.getLight(i,j).sendCurrentColor(); 
    }
  }
}
  
  public void initializeOneColor(int id){
   for (int i = 1; i<=3; i++){
    for (int j = 1; j<=3; j++){ 
    lightMatrix.getLight(i,j).setColor(new Color (id));
   }
  }
  delay(120);
  setMatrix();
  
}

public void allOff(){
   initializeOneColor(22);
   setMatrix();
   
}

public void allOn(){
   initializeOneColor(99);
   initializeOneColor(15);
   setMatrix();
}

public void setAllWhite(){
  initializeOneColor(99);
  initializeOneColor(15);
  setMatrix();
}

public void animation(){
allOn();

Alexandra alexandra = new Alexandra("Alexandras Animationen");
Celina celina = new Celina("Celinas Animationen");
Denis denis = new Denis("Denis' Animationen");
Marek marek = new Marek("Mareks Animationen");
Emanuel emanuel = new Emanuel("Emanuels Animationen");
Maja maja = new Maja("Majas Animationen");
Jannik jannik = new Jannik("Janniks Animationen");
Raoul raoul = new Raoul("Raouls Animationen");
Sven sven = new Sven("Svens' Animationen");
Miko miko = new Miko("Mikos Animationen");
Julius julius = new Julius("Julius' Animationen");
Enrico enrico = new Enrico("Enricos Animationen");
Marvin marvin = new Marvin("Marvins Animationen");

while(true){
enrico.enricosAnimation();
delay(10000);
maja.majasAnimation();
delay(10000);
miko.mikosAnimation();
delay(10000);
marek.mareksAnimation();

delay(10000);

//julius.juliusAnimation();


 for(int j = 0; j<10; j++){
  for(int i=0; i<6; i=i+5){
    //Color red = new Color(i);
    for(int col=3; col>=1;col--){
      for(int row=3; row>=1;row--){
        lightMatrix.getLight(col,row).setColor(new Color(i));
        lightMatrix.getLight(col,row).sendCurrentColor();
          delay(120);
      }}
    }
  }
  //  delay(250);
  } 
}


}
