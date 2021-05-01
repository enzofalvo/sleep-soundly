import controlP5.*;

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
   controlp5 = new ControlP5(this);
   controlp5.addButton("eeeeee").setPosition(250, 400);
   controlp5.addButton("Opa").setPosition(250, 315);
   
   
   background(0);
   println("Digite o seu nome");
}

private button() {

}
