class GUI {
		ControlP5 cp5;

    GUI(PApplet thePApplet) {
			cp5 = new ControlP5(thePApplet);
     
      cp5.addButton("allOff").setPosition(height+10,10).setSize(width-height-20,40).setLabel("All off");
      cp5.addButton("allOn").setPosition(height+10,60).setSize(width-height-20,40).setLabel("All on");
      //cp5.addButton("Play TicTacToe").setPosition(height+10,110).setSize(width-height-20,80);
      cp5.addButton("playAnimation").setPosition(height+10,110).setSize(width-height-20,40).setLabel("Play Animation");
      cp5.addButton("alexandra").setPosition(height+10,160).setSize(width-height-20,40).setLabel("Alexandra");
      cp5.addButton("celina").setPosition(height+10,210).setSize(width-height-20,40).setLabel("Celina");
      cp5.addButton("denis").setPosition(height+10,260).setSize(width-height-20,40).setLabel("Denis");
      cp5.addButton("marek").setPosition(height+10,310).setSize(width-height-20,40).setLabel("Marek");
      cp5.addButton("emanuel").setPosition(height+10,360).setSize(width-height-20,40).setLabel("Emanuel");
      cp5.addButton("jannik").setPosition(height+10,410).setSize(width-height-20,40).setLabel("Jannik");
      cp5.addButton("maja").setPosition(height+10,460).setSize(width-height-20,40).setLabel("Maja");
      cp5.addButton("raoul").setPosition(height+10,510).setSize(width-height-20,40).setLabel("Raoul");
      cp5.addButton("sven").setPosition(height+10,560).setSize(width-height-20,40).setLabel("Sven");
      
      
      
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
