import java.util.ArrayList;
import java.util.List;
import controlP5.*;
import ddf.minim.*;
import processing.video.*;

ControlP5 controlp5;
Minim minim;

void setup() {
  size(500, 650);
  background(50);
  
  minim = new Minim(this);
  musica_chuva = minim.loadFile("musica_chuva.mp3"); 
  musica_rio = minim.loadFile("musica_rio.mp3"); 
  musica_oceano = minim.loadFile("musica_oceano.mp3"); 
  musica_passaros = minim.loadFile("musica_passaros.mp3");
  musica_natureza = minim.loadFile("musica_natureza.mp3");
  musica_chuva_passaros = minim.loadFile("musica_chuva_passaros.mp3");
  
  video_chuva = new Movie(this, "video_chuva.mp4");
  video_rio = new Movie(this, "video_rio.mp4");
  video_oceano = new Movie(this, "video_oceano.mp4");
  video_natureza = new Movie(this, "video_natureza.mp4");
  video_chuva_passaros = new Movie(this, "video_chuva_passaros.mp4");

  viewIntroduction();

}

void draw() {
  image(video_chuva, 0, 0);
  image(video_rio, 0, 0);
  image(video_oceano, 0, 0);
  image(video_natureza, 0, 0);
  image(video_chuva_passaros, 0, 0);;
}


void mousePressed() {
  //configuração das faixas de musicas
  //linha 1
  if((mouseX>50)&&(mouseX<200)&&(mouseY>75)&&(mouseY<189)) {musica=1; toca_musica();toca_musica();video=1; play_video();}
  if((mouseX>300)&&(mouseX<450)&&(mouseY>75)&&(mouseY<189)) {musica=2; toca_musica();toca_musica();video=2; play_video();}
  //linha2
  if((mouseX>50)&&(mouseX<200)&&(mouseY>270)&&(mouseY<389)) {musica=3; toca_musica();toca_musica();video=3; play_video();}
  if((mouseX>300)&&(mouseX<450)&&(mouseY>275)&&(mouseY<389)) {musica=4; toca_musica();toca_musica();video=4; play_video();}
  //linha3
  if((mouseX>50)&&(mouseX<200)&&(mouseY>475)&&(mouseY<575)) {musica=5; toca_musica();toca_musica();video=5; play_video();}
  if((mouseX>300)&&(mouseX<450)&&(mouseY>475)&&(mouseY<589)) {musica=6; toca_musica();toca_musica();video=4; play_video();} 
  
  if (dark == false) {
    if(mouseX > 10 && mouseX < 60 && mouseY > 10 && mouseY < 35) {
      background(#222222);
      controlp5.setColorBackground(#555555);
      dark = true;
    }
  }
  else if (dark == true) {
    if(mouseX > 10 && mouseX < 60 && mouseY > 10 && mouseY < 35) {
      background(#EEFFFF);
      controlp5.setColorBackground(#89ABE3);
      dark = false;
    }
  }
}
