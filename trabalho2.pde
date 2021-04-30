String name;

void setup() {
  size(500, 650);
}

void draw() {
  background(50);

  if (name == null) {
    noLoop();
    viewIntroduction();
    
  }
  
  println("Olá");
}

void viewIntroduction() {
   background(0);
   println("Digite o seu nome");
   
   
}
