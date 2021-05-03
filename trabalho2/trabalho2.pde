import java.util.ArrayList;
import java.util.List;
import controlP5.*;

List<Button> listOfButtons = new ArrayList<Button>();

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

// NAO ESTA SENDO UTILIZADO POR ENQUANTO
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
   Button test1 = controlp5.addButton("TEST").setSize(100, 100).setPosition(75, 50);
   Button test2 = controlp5.addButton("TEST2").setSize(100, 100).setPosition(325, 50);   
   Button test3 = controlp5.addButton("TEST3").setSize(100, 100).setPosition(75, 250);
   Button test4 = controlp5.addButton("TEST4").setSize(100, 100).setPosition(325, 250);
   Button test5 = controlp5.addButton("TEST5").setSize(100, 100).setPosition(75, 450);
   Button test6 = controlp5.addButton("TEST6").setSize(100, 100).setPosition(325, 450); 
   
   // ARMAZENANDO CADA BOTAO EM UMA LISTA
   listOfButtons.add(test1);
   listOfButtons.add(test2);
   listOfButtons.add(test3);
   listOfButtons.add(test4);
   listOfButtons.add(test5);
   listOfButtons.add(test6);
   
   //SE UM DOS BOTOES FOREM PRESSIONADOS IRA CHAMAR O "viewTestBg()" E A TELA FICARA BRANCA
   buttonPressioned(listOfButtons); 
}

// COLOCA TELA BRANCA
void viewTestBg() {
   background(0);

      
}



//ADICIONANDO A ACAO DE DEIXAR A TELA BRANCA QUANDO O BOTAO FOR PRESSIONADO (DPS VAMOS MUDAR A ACAO PARA ENTRAR DENTRO DO GIF)
void buttonPressioned(List<Button> list) {
  for (Button button : list) {
    button.addCallback(new CallbackListener() {
       public void controlEvent(CallbackEvent event) {
           switch(event.getAction()) {
              case (ControlP5.PRESSED):    
              controlp5.hide();
              viewTestBg();
              break;
           }
       }
    });
  }
}
