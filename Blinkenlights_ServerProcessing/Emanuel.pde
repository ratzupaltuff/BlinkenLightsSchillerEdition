public class Emanuel extends Animation {

  String name;
  //int col=3;
  //int row=3;

  public Emanuel(String name) {
    super(name);
  }

  public void emanuelsAnimation() {
    // animation0();
    animation();
    // animation2();
    // animation3();
    setAllWhite();
  }

  public void animation() {
    
    initializeOneColor(99);
    delay(500);
    for (int i =0; i<=19; i++){
      initializeOneColor(i);
      delay(5000);
   
    }
   
  }
}
