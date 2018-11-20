public class Enrico extends Animation{

String name;
//int col=3;
//int row=3;

public Enrico(String name){
  super(name);
}

public void enricosAnimation(){
  
 //animation();
 //setAllWhite();
 
 allOn();
 setAllWhite();
 allOff();
 
 S();
 C();
 H();
 I();
 L();
 L();
 E();
 R();
 
 allOn();
 setAllWhite();
 allOff();
}

public void animation(){
  int i=15;
  for (int col= 3; col>=1; col--){
        for(int row=3; row>=1;row--){
        lightMatrix.getLight(col, row).setColor(new Color (i));
        lightMatrix.getLight(col,row).sendCurrentColor();
        delay (10000);

      }
  }
}
public void S(){

  lightMatrix.getLight(3,1).setColor(new Color (99)); //top right
  delay(200);
  lightMatrix.getLight(3,1).setColor(new Color (22));
  lightMatrix.getLight(2,1).setColor(new Color (99)); //top mid
  delay(200);
  lightMatrix.getLight(2,1).setColor(new Color (22));
  lightMatrix.getLight(1,1).setColor(new Color (99)); //top left
  delay(200);
  lightMatrix.getLight(1,1).setColor(new Color (22));
  lightMatrix.getLight(1,2).setColor(new Color (99)); //mid left
  delay(200);
  lightMatrix.getLight(1,2).setColor(new Color (22));
  lightMatrix.getLight(2,2).setColor(new Color (99)); //mid mid
  delay(200);
  lightMatrix.getLight(2,2).setColor(new Color (22));
  lightMatrix.getLight(3,2).setColor(new Color (99)); //mid right
  delay(200);
  lightMatrix.getLight(3,2).setColor(new Color (22));
  lightMatrix.getLight(3,3).setColor(new Color (99)); //bot right
  delay(200);
  lightMatrix.getLight(3,3).setColor(new Color (22));
  lightMatrix.getLight(2,3).setColor(new Color (99)); //bot mid
  delay(200);
  lightMatrix.getLight(2,3).setColor(new Color (22));
  lightMatrix.getLight(1,3).setColor(new Color (99)); //bot left
  delay(200);
  lightMatrix.getLight(1,3).setColor(new Color (22));
}

public void C(){

  lightMatrix.getLight(3,1).setColor(new Color (99)); //top right
  lightMatrix.getLight(2,1).setColor(new Color (99)); //top mid
  lightMatrix.getLight(1,1).setColor(new Color (99)); //top left
  lightMatrix.getLight(1,2).setColor(new Color (99)); //mid left
  lightMatrix.getLight(1,3).setColor(new Color (99)); //bot left
  lightMatrix.getLight(2,3).setColor(new Color (99)); //bot mid
  lightMatrix.getLight(3,3).setColor(new Color (99)); //bot right
  delay(1000);
  lightMatrix.getLight(3,1).setColor(new Color (22)); //top right
  lightMatrix.getLight(2,1).setColor(new Color (22)); //top mid
  lightMatrix.getLight(1,1).setColor(new Color (22)); //top left
  lightMatrix.getLight(1,2).setColor(new Color (22)); //mid left
  lightMatrix.getLight(1,3).setColor(new Color (22)); //bot left
  lightMatrix.getLight(2,3).setColor(new Color (22)); //bot mid
  lightMatrix.getLight(3,3).setColor(new Color (22)); //bot right
}

public void H(){

  lightMatrix.getLight(3,1).setColor(new Color (99)); //top right
  lightMatrix.getLight(1,1).setColor(new Color (99)); //top left
  lightMatrix.getLight(3,2).setColor(new Color (99)); //mid left
  lightMatrix.getLight(2,2).setColor(new Color (99)); //mid mid
  lightMatrix.getLight(1,2).setColor(new Color (99)); //mid right
  lightMatrix.getLight(1,3).setColor(new Color (99)); //bot left
  lightMatrix.getLight(3,3).setColor(new Color (99)); //bot right
  delay(1000);
  lightMatrix.getLight(3,1).setColor(new Color (22)); //top right
  lightMatrix.getLight(1,1).setColor(new Color (22)); //top left
  lightMatrix.getLight(3,2).setColor(new Color (22)); //mid left
  lightMatrix.getLight(2,2).setColor(new Color (22)); //mid mid
  lightMatrix.getLight(1,2).setColor(new Color (22)); //mid right
  lightMatrix.getLight(1,3).setColor(new Color (22)); //bot left
  lightMatrix.getLight(3,3).setColor(new Color (22)); //bot right
}

public void I(){

  lightMatrix.getLight(2,1).setColor(new Color (99)); //top mid
  lightMatrix.getLight(2,2).setColor(new Color (99)); //mid mid
  lightMatrix.getLight(2,3).setColor(new Color (99)); //bot mid
  delay(1000);
  lightMatrix.getLight(2,1).setColor(new Color (22)); //top mid
  lightMatrix.getLight(2,2).setColor(new Color (22)); //mid mid
  lightMatrix.getLight(2,3).setColor(new Color (22)); //bot mid
}

public void L(){

  lightMatrix.getLight(1,1).setColor(new Color (99)); //top left
  lightMatrix.getLight(1,2).setColor(new Color (99)); //mid left
  lightMatrix.getLight(1,3).setColor(new Color (99)); //bot left
  lightMatrix.getLight(2,3).setColor(new Color (99)); //bot mid
  lightMatrix.getLight(3,3).setColor(new Color (99)); //bot right
  delay(1000);
  lightMatrix.getLight(1,1).setColor(new Color (22)); //top left
  lightMatrix.getLight(1,2).setColor(new Color (22)); //mid left
  lightMatrix.getLight(1,3).setColor(new Color (22)); //bot left
  lightMatrix.getLight(2,3).setColor(new Color (22)); //bot mid
  lightMatrix.getLight(3,3).setColor(new Color (22)); //bot right
}

public void E(){

  lightMatrix.getLight(1,1).setColor(new Color (99)); //top left
  lightMatrix.getLight(1,2).setColor(new Color (99)); //mid left
  lightMatrix.getLight(1,3).setColor(new Color (99)); //bot left
  delay(500);
  
  lightMatrix.getLight(2,1).setColor(new Color (99)); //top mid
  delay(200);
  lightMatrix.getLight(2,1).setColor(new Color (22)); //top mid
  
  lightMatrix.getLight(3,1).setColor(new Color (99)); //top right
  delay(200);
  lightMatrix.getLight(3,1).setColor(new Color (22)); //top right
  
  lightMatrix.getLight(2,2).setColor(new Color (99)); //mid mid
  delay(200);
  lightMatrix.getLight(2,2).setColor(new Color (22)); //mid mid
  
  lightMatrix.getLight(3,2).setColor(new Color (99)); //mid right
  delay(200);
  lightMatrix.getLight(3,2).setColor(new Color (22)); //mid right
  
  lightMatrix.getLight(2,3).setColor(new Color (99)); //bot mid
  delay(200);
  lightMatrix.getLight(2,3).setColor(new Color (22)); //bot mid
  
  lightMatrix.getLight(3,3).setColor(new Color (99)); //bot right
  delay(200);
  lightMatrix.getLight(3,3).setColor(new Color (22)); //bot right
  
  lightMatrix.getLight(1,1).setColor(new Color (22)); //top left
  lightMatrix.getLight(1,2).setColor(new Color (22)); //mid left
  lightMatrix.getLight(1,3).setColor(new Color (22)); //bot left
}

public void R(){

  lightMatrix.getLight(1,1).setColor(new Color (99)); //top left
  lightMatrix.getLight(1,2).setColor(new Color (99)); //mid left
  lightMatrix.getLight(1,3).setColor(new Color (99)); //bot left
  
  lightMatrix.getLight(2,1).setColor(new Color (99)); //top mid
  delay(200);
  lightMatrix.getLight(2,1).setColor(new Color (22)); //top mid
  
  lightMatrix.getLight(3,1).setColor(new Color (99)); //top right
  delay(200);
  lightMatrix.getLight(3,1).setColor(new Color (22)); //top right
  
  lightMatrix.getLight(3,2).setColor(new Color (99)); //mid right
  delay(200);
  lightMatrix.getLight(3,2).setColor(new Color (22)); //mid right
  
  lightMatrix.getLight(2,2).setColor(new Color (99)); //mid mid
  delay(200);
  lightMatrix.getLight(2,2).setColor(new Color (22)); //mid mid
  
  lightMatrix.getLight(3,3).setColor(new Color (99)); //bot right
  delay(200);
  lightMatrix.getLight(3,3).setColor(new Color (22)); //bot right
  
  lightMatrix.getLight(1,1).setColor(new Color (22)); //top left
  lightMatrix.getLight(1,2).setColor(new Color (22)); //mid left
  lightMatrix.getLight(1,3).setColor(new Color (22)); //bot left
}


}
