import java.util.ArrayList;
import java.util.List;
import controlP5.*;

List<Button> listOfButtons = new ArrayList<Button>();

String name;
ControlP5 controlp5;

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
   background(#000000);
   
   controlp5 = new ControlP5(this);
   
   controlp5.setColorBackground(#8462F5);
  

   Button test1 = controlp5.addButton("TEST").setSize(100, 100).setPosition(75, 50);
   Button test2 = controlp5.addButton("TEST2").setSize(100, 100).setPosition(325, 50);   
   Button test3 = controlp5.addButton("TEST3").setSize(100, 100).setPosition(75, 250);
   Button test4 = controlp5.addButton("TEST4").setSize(100, 100).setPosition(325, 250);
   Button test5 = controlp5.addButton("TEST5").setSize(100, 100).setPosition(75, 450);
   Button test6 = controlp5.addButton("TEST6").setSize(100, 100).setPosition(325, 450); 
   
   listOfButtons.add(test1);
   listOfButtons.add(test2);
   listOfButtons.add(test3);
   listOfButtons.add(test4);
   listOfButtons.add(test5);
   listOfButtons.add(test6);
   
   buttonPressioned(listOfButtons); 
}


void viewFirstGif() {
   background(0);
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
              controlp5.hide();
              viewFirstGif();
              break;
           }
       }
    });
  }
}
