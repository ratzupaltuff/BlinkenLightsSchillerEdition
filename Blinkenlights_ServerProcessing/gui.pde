class GUI {
		ControlP5 cp5;

    GUI(PApplet thePApplet) {
			cp5 = new ControlP5(thePApplet);
     
      cp5.addButton("allOff").setPosition(height+10,10).setSize(width-height-20,80).setLabel("All off");
      cp5.addButton("allOn").setPosition(height+10,110).setSize(width-height-20,80).setLabel("All on");
      //cp5.addButton("Play TicTacToe").setPosition(height+10,110).setSize(width-height-20,80);
      cp5.addButton("playAnimation").setPosition(height+10,210).setSize(width-height-20,80).setLabel("Play Animation");
      
      //cp5.addButton("selectColor").setPosition(height+10,100).setSize(width-height-20,80).setLabel("Toggle Colorselection");
		}
    void generateColorSelector(int x, int y, int w, int h, int col, int row){
      for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 3; j++) {
          cp5.addButton("button"+col+row+j+i)
            .setPosition(x+i*w/5,y+j*h/3)
            .setSize(w/5,h/3)
            .setColorBackground(new Color(j*5+i)
            .getHex())
            .setLabel("");  }
        }

      }

	}
