import java.util.ArrayList;
import java.util.List;
import controlP5.*;

String name;
ControlP5 controlp5;
public boolean dark;

final List<Button> listOfButtonsViewIntrod = new ArrayList<Button>();
List<Button> listOfButtonsViewFirstGif = new ArrayList<Button>();

void setup() {
  size(500, 650);
  background(50);
  
  if (name == null) {
     viewIntroduction();
  } 
}

void draw() {

}

void viewIntroduction() {
   background(#ffffff);
   
   controlp5 = new ControlP5(this);
   
   
   Button test1 = controlp5.addButton("TEST").setSize(150, 100).setPosition(50, 75);
   test1.setColorBackground(#DCDCDC);
   Button test2 = controlp5.addButton("TEST2").setSize(150, 100).setPosition(300, 75);   
   test2.setColorBackground(#DCDCDC);
   Button test3 = controlp5.addButton("TEST3").setSize(150, 100).setPosition(50, 275);
   test3.setColorBackground(#DCDCDC);
   Button test4 = controlp5.addButton("TEST4").setSize(150, 100).setPosition(300, 275);
   test4.setColorBackground(#DCDCDC);
   Button test5 = controlp5.addButton("TEST5").setSize(150, 100).setPosition(50, 475);
   test5.setColorBackground(#DCDCDC);
   Button test6 = controlp5.addButton("TEST6").setSize(150, 100).setPosition(300, 475);
   test6.setColorBackground(#DCDCDC);
   Button darkTheme = controlp5.addButton("MUDAR TEMA").setSize(50, 25).setPosition(10, 10);
   darkTheme.setColorBackground(#DCDCDC);

   listOfButtonsViewIntrod.add(test1);
   listOfButtonsViewIntrod.add(test2);
   listOfButtonsViewIntrod.add(test3);
   listOfButtonsViewIntrod.add(test4);
   listOfButtonsViewIntrod.add(test5);
   listOfButtonsViewIntrod.add(test6);
   
   test1.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        viewFirstGif();
        hideButtons(listOfButtonsViewIntrod);
      }
    }
  }
  );
  test2.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        viewFirstGif();
        hideButtons(listOfButtonsViewIntrod);
      }
    }
  }
  );
  test3.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        viewFirstGif();
        hideButtons(listOfButtonsViewIntrod);
      }
    }
  }
  );
  test4.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        viewFirstGif();
        hideButtons(listOfButtonsViewIntrod);
      }
    }
  }
  );
  test5.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        viewFirstGif();
        hideButtons(listOfButtonsViewIntrod);
      }
    }
  }
  );
  test6.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        viewFirstGif();
        hideButtons(listOfButtonsViewIntrod);
      }
    }
  }
  );  
}


void viewFirstGif() {
   background(255);
   
   Button btnBack = controlp5.addButton("Voltar").setSize(50, 25).setPosition(440, 10);
   btnBack.setColorBackground(#DCDCDC);  
   listOfButtonsViewFirstGif.add(btnBack);
   
   btnBack.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        viewIntroduction();
        hideButtons(listOfButtonsViewFirstGif);
      }
    }
  }
  );
}

void mousePressed() {
  if (dark == false) {
    if(mouseX > 10 && mouseX < 60 && mouseY > 10 && mouseY < 35) {
      background(#222222);
      controlp5.setColorBackground(#555555);
      dark = true;
    }
  }
  else if (dark == true) {
    if(mouseX > 10 && mouseX < 60 && mouseY > 10 && mouseY < 35) {
      background(#ffffff);
      controlp5.setColorBackground(#DCDCDC);
      dark = false;
    }
  }
}

void hideButtons(List<Button> list) {
  for (Button b : list) {
     b.hide(); 
  }
}
