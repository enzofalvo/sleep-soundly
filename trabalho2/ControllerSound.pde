int musica = 1;
AudioPlayer musica_chuva, musica_rio, musica_oceano, musica_passaros, musica_natureza, musica_chuva_passaros;

void toca_musica(){
  if (musica==1) {
    musica_rio.pause();
    musica_oceano.pause();
    musica_chuva.play();}  
  if (musica==2) {
    musica_chuva.pause();
    musica_oceano.pause();
    musica_rio.play();}  
  if (musica==3) {  
    musica_chuva.pause();
    musica_rio.pause();
    musica_oceano.play();}
  if (musica==4) { 
    musica_chuva.pause();
    musica_rio.pause();
    musica_oceano.pause();
    musica_natureza.pause();
    musica_chuva_passaros.pause();
    musica_passaros.play();}
   if (musica==5) { 
     musica_chuva.pause();
     musica_rio.pause();
     musica_oceano.pause();
     musica_passaros.pause(); 
     musica_natureza.play();}
   if (musica==6) {  
     musica_chuva.pause();
     musica_rio.pause();
     musica_oceano.pause();
     musica_passaros.pause(); 
     musica_natureza.pause();
     musica_chuva_passaros.play();}
}

void close(){ //função que fara as musicas pararem de tocar quando apertar o botão voltar
    if (musica==1) {
      musica_chuva.pause();
      video_chuva.stop();
    }
    if (musica==2) {
    musica_rio.pause();
    video_rio.stop();
    }
    if (musica==3) {
    musica_oceano.pause();
    video_oceano.stop();
    }
    if (musica==4) {
    musica_passaros.pause();
    video_chuva_passaros.stop();
    }
    if (musica==5) {
    musica_natureza.pause();
    video_natureza.stop();
    }
    if (musica==6) {
    musica_chuva_passaros.pause();
    video_chuva_passaros.stop();
    }
}
