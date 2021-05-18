int video = 0;
Movie video_chuva,video_rio,video_oceano,video_natureza,video_chuva_passaros;

void movieEvent(Movie m) {
  m.read();
}

void play_video(){
  if (video==1) {
    video_rio.pause();
    video_oceano.pause();
    video_natureza.pause();
    video_chuva_passaros.pause();
    video_chuva.play();
    video_chuva.volume(0);
    } 
  if (video==2) {
    video_chuva.pause();
    video_oceano.pause();
    video_natureza.pause();
    video_chuva_passaros.pause();
    video_rio.play();
    video_rio.volume(0);} 
  if (video==3) {
    video_chuva.pause();
    video_rio.pause();
    video_natureza.pause();
    video_chuva_passaros.pause();
    video_oceano.play();
    video_oceano.volume(0);}   
  if (video==4) {
    video_chuva.pause();
    video_rio.pause();
    video_oceano.pause();
    video_natureza.pause();
    video_chuva_passaros.play();
    video_chuva_passaros.volume(0);}    
  if (video==5) {
    video_chuva.pause();
    video_rio.pause();
    video_oceano.pause();
    video_chuva_passaros.pause();
    video_natureza.play();
    video_natureza.volume(0);}      
}
