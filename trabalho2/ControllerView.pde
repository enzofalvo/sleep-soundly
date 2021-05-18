List<Button> listOfButtonsViewIntrod = new ArrayList<Button>();
List<Button> listOfButtonsViewFirstGif = new ArrayList<Button>();

void viewIntroduction() {
   background(#EEFFFF);
   
   controlp5 = new ControlP5(this);
  
   Button test1 = controlp5.addButton("Chuva").setSize(150, 100).setPosition(50, 75);
   test1.setColorBackground(#89ABE3);
   Button test2 = controlp5.addButton("Rio").setSize(150, 100).setPosition(300, 75);   
   test2.setColorBackground(#89ABE3);
   Button test3 = controlp5.addButton("Oceano").setSize(150, 100).setPosition(50, 275);
   test3.setColorBackground(#89ABE3);
   Button test4 = controlp5.addButton("Passaros").setSize(150, 100).setPosition(300, 275);
   test4.setColorBackground(#89ABE3);
   Button test5 = controlp5.addButton("Natureza").setSize(150, 100).setPosition(50, 475);
   test5.setColorBackground(#89ABE3);
   Button test6 = controlp5.addButton("Chuva e Passaros").setSize(150, 100).setPosition(300, 475);
   test6.setColorBackground(#89ABE3);
   
   Button darkTheme = controlp5.addButton("MUDAR TEMA").setSize(50, 25).setPosition(10, 10);
   darkTheme.setColorBackground(#89ABE3);
   
   listOfButtonsViewIntrod.add(test1);
   listOfButtonsViewIntrod.add(test2);
   listOfButtonsViewIntrod.add(test3);
   listOfButtonsViewIntrod.add(test4);
   listOfButtonsViewIntrod.add(test5);
   listOfButtonsViewIntrod.add(test6);
   
  test1.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        removeButtons(listOfButtonsViewIntrod);
        viewFirstGif(); 
      }
    }
  }
  );
  test2.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        removeButtons(listOfButtonsViewIntrod);
        viewSecondGif();
      }
    }
  }
  );
  test3.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        removeButtons(listOfButtonsViewIntrod);
        viewThirdGif();
      }
    }
  }
  );
  test4.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        removeButtons(listOfButtonsViewIntrod);
        viewFourthGif();
      }
    }
  }
  );
  test5.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        removeButtons(listOfButtonsViewIntrod);
        viewSixtyGif();
      }
    }
  }
  );
  test6.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        removeButtons(listOfButtonsViewIntrod);
        viewFirstGif();
      }
    }
  }
  );  
}

void viewFirstGif() {
   background(255);
   addButtonBack();
}

void viewSecondGif() {
   background(#6495ED);
   addButtonBack();
}

void viewThirdGif() {
   background(#2F4F4F);
   addButtonBack();
}

void viewFourthGif() {
   background(#3CB371);
   addButtonBack();
}

void viewFifthGif() {
   background(#DAA520);
   addButtonBack();
}

void viewSixtyGif() {
   background(#A0522D);
   addButtonBack();
}


void removeButtons(List<Button> list) {
  
  for (Button b : list) {
     b.hide();
     b.lock();  
  }
}

void addButtonBack() {
   Button btnBack = controlp5.addButton("Voltar").setSize(50, 25).setPosition(440, 10);
   if (dark == true) {
     btnBack.setColorBackground(#555555);
   } else if (dark == false) {
     btnBack.setColorBackground(#89ABE3);
   }
   listOfButtonsViewFirstGif.add(btnBack);
   btnBack.onRelease(new CallbackListener() {  
    public void controlEvent(CallbackEvent event) {
      if (controlp5.PRESSED == 1) {
        viewIntroduction();
        if (dark == true) {
          background(#222222);
          controlp5.setColorBackground(#555555);
        } else if (dark == false) {
          background(#EEFFFF);
          controlp5.setColorBackground(#89ABE3);
        
        }
        close();//chamando a função para parar a musica
      }
    }
  }
  );
}
