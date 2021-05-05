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
   
   
   
  

   Button test1 = controlp5.addButton("TEST").setSize(150, 100).setPosition(50, 75);
   test1.setColorBackground(#9D43DE);
   Button test2 = controlp5.addButton("TEST2").setSize(150, 100).setPosition(300, 75);   
   test2.setColorBackground(#9D43DE);
   Button test3 = controlp5.addButton("TEST3").setSize(150, 100).setPosition(50, 275);
   test3.setColorBackground(#9D43DE);
   Button test4 = controlp5.addButton("TEST4").setSize(150, 100).setPosition(300, 275);
   test4.setColorBackground(#9D43DE);
   Button test5 = controlp5.addButton("TEST5").setSize(150, 100).setPosition(50, 475);
   test5.setColorBackground(#9D43DE);
   Button test6 = controlp5.addButton("TEST6").setSize(150, 100).setPosition(300, 475);
   test6.setColorBackground(#9D43DE);
   
   
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
