public class Marvin extends Animation{

String name;
//int col=3;
//int row=3;

public Marvin(String name){
  super(name);
}

public void marvinsAnimation(){
 // animation0();
 // animation();
 // animation2();
 // animation3();
 allOn();
 setAllWhite();
 allOff();
 
 Marvin();
 delay(1000);
 setAllWhite();
 delay(1000);
 Marvins();
 
 allOn();
 setAllWhite();
 allOff();
 
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

public void Marvin(){

  lightMatrix.getLight(1,3).setColor(new Color (5)); //top right
  lightMatrix.getLight(1,2).setColor(new Color (5)); //top mid
  lightMatrix.getLight(1,1).setColor(new Color (5)); //top left
  lightMatrix.getLight(2,1).setColor(new Color (5)); //mid left
  lightMatrix.getLight(3,1).setColor(new Color (5)); //bot left
  lightMatrix.getLight(3,2).setColor(new Color (5)); //bot mid
  lightMatrix.getLight(3,3).setColor(new Color (5)); //bot right
  lightMatrix.getLight(1,3).setColor(new Color (99)); //top right
  lightMatrix.getLight(1,2).setColor(new Color (99)); //top mid
  lightMatrix.getLight(1,1).setColor(new Color (99)); //top left
  lightMatrix.getLight(2,1).setColor(new Color (99)); //mid left
  lightMatrix.getLight(3,1).setColor(new Color (99)); //bot left
  lightMatrix.getLight(3,2).setColor(new Color (99)); //bot mid
  lightMatrix.getLight(3,3).setColor(new Color (99)); //bot right
  setMatrix();
  delay(2000);
  lightMatrix.getLight(1,3).setColor(new Color (22)); //top right
  lightMatrix.getLight(1,2).setColor(new Color (22)); //top mid
  lightMatrix.getLight(1,1).setColor(new Color (22)); //top left
  lightMatrix.getLight(2,1).setColor(new Color (22)); //mid left
  lightMatrix.getLight(3,1).setColor(new Color (22)); //bot left
  lightMatrix.getLight(3,2).setColor(new Color (22)); //bot mid
  lightMatrix.getLight(3,3).setColor(new Color (22)); //bot right
  setMatrix();

}
public void Marvins(){
 lightMatrix.getLight(1,2).setColor(new Color (99)); //top mid
  lightMatrix.getLight(2,2).setColor(new Color (99)); //mid mid
  lightMatrix.getLight(3,2).setColor(new Color (99)); //bot mid
  setMatrix();
  delay(1000);
  lightMatrix.getLight(1,2).setColor(new Color (22)); //top mid
  lightMatrix.getLight(2,2).setColor(new Color (22)); //mid mid
  lightMatrix.getLight(3,2).setColor(new Color (22)); //bot mid
setMatrix();

}
}
