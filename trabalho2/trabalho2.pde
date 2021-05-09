import java.util.ArrayList;
import java.util.List;
import controlP5.*;

List<Button> listOfButtons = new ArrayList<Button>();

String name;
ControlP5 controlp5;
public boolean dark;

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
   
   boolean isPressed = false;
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
   
   listOfButtons.add(test1);
   listOfButtons.add(test2);
   listOfButtons.add(test3);
   listOfButtons.add(test4);
   listOfButtons.add(test5);
   listOfButtons.add(test6);
   
   buttonPressioned(listOfButtons);
   
 }


void viewFirstGif() {
   background(255);
   Button test1 = controlp5.addButton("TEST").setSize(300, 300).setPosition(50, 75);

}


void viewSecondGif() {
   background(0);
}

void buttonPressioned(List<Button> list) {
  
  for (Button button : list) {
    button.addCallback(new CallbackListener() {
       public void controlEvent(CallbackEvent event) {
           switch(event.getAction()) {
              case (ControlP5.PRESSED):    
              
             for (Button button : listOfButtons) {
                button.hide(); 
             }
             viewFirstGif();
              break;
          }
       }
    });
  }
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
