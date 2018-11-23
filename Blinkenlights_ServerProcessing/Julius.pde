public class Julius extends Animation{



String name;

//int col=3;

//int row=3;



public Julius(String name){

  super(name);

}





public void juliusAnimation(){

allOn();

delay(3000);

Punkt();

delay(3000);

Kreuz();

delay(3000);

Kreis();

delay(3000);

Ecken();

delay(3000);

}


public void allOne(){

    initializeOneColor(5);
    
    setMatrix();

}

  

public void Punkt(){

     lightMatrix.getLight(2,2).setColor(new Color (13));

     lightMatrix.getLight(2,2).sendCurrentColor();
    

}

public void Kreuz(){

    for (int i = 1; i<=3; i++){
    
    lightMatrix.getLight(i,2).setColor(new Color (13));
    
    lightMatrix.getLight(i,2).sendCurrentColor();

    lightMatrix.getLight(2,i).setColor(new Color (13));
    
    lightMatrix.getLight(2,i).sendCurrentColor();
}
}
public void Kreis(){

    initializeOneColor(13);
    
    lightMatrix.getLight(2,2).setColor(new Color (5));
    
    setMatrix();

}

public void Ecken(){

    for (int i = 1; i<=3; i=+2){

        initializeOneColor(5);

        lightMatrix.getLight(i,1).setColor(new Color (13));
    
        lightMatrix.getLight(1,i).setColor(new Color (13));
    
        lightMatrix.getLight(i,i).setColor(new Color (13));
    
    }

}

}
