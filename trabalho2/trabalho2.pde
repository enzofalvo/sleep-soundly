
//oi
import controlP5.*;

String name;

ControlP5 controlp5;

void setup() {
  size(500, 650);
  background(50);
  
  // se não existir um nome ele carrega a tela de menu direto
  if (name == null) {
     viewIntroduction(); 
  }  
}

void draw() {
  
}

// MENU PARA QUE O USUARIO SELECIONE QUAL SOM ELE VAI QUERER ESCUTAR
void viewIntroduction() {
  
   // DEFININDO A COR DO FUNDO
   background(#9FE2BF);
   
   // CRIANDO OBJETO CONTROLP5 PARA PODER MEXER COM OS ATRIBUTOS BUTTON
   controlp5 = new ControlP5(this);
   
   //DEFININDO A COR DO BOTÃO: ROSA  
   controlp5.setColorBackground(#DE3163);
   
   // FAZENDO ALGUNS TESTES COM OS BOTÕES E COLOCANDO ELES NAS POSIÇÕES GENÉRICAS QUE TALVEZ ELES POSSAM FICAR NO FUTURO
   Button test2 = controlp5.addButton("TEST").setSize(100, 100).setPosition(75, 50);
   Button test1 = controlp5.addButton("TEST2").setSize(100, 100).setPosition(325, 50);   
   Button test4 = controlp5.addButton("TEST3").setSize(100, 100).setPosition(75, 250);
   Button test3 = controlp5.addButton("TEST4").setSize(100, 100).setPosition(325, 250);
   Button test6 = controlp5.addButton("TEST5").setSize(100, 100).setPosition(75, 450);
   Button test5 = controlp5.addButton("TEST6").setSize(100, 100).setPosition(325, 450); 
}
