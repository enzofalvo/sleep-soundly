int video = 0;
Movie video_chuva,video_rio,video_oceano,video_natureza,video_chuva_passaros;


void play_video(){
  if (video==1) {
    video_rio.pause();
    video_oceano.pause();
    video_natureza.pause();
    video_chuva_passaros.pause();
    video_chuva.play();
    } 
  if (video==2) {
    video_chuva.pause();
    video_oceano.pause();
    video_natureza.pause();
    video_chuva_passaros.pause();
    video_rio.play();} 
  if (video==3) {
    video_chuva.pause();
    video_rio.pause();
    video_natureza.pause();
    video_chuva_passaros.pause();
    video_oceano.play();}   
  if (video==4) {
    video_chuva.pause();
    video_rio.pause();
    video_oceano.pause();
    video_chuva_passaros.play();
    video_natureza.pause();}    
  if (video==5) {
    video_chuva.pause();
    video_rio.pause();
    video_oceano.pause();
    video_chuva_passaros.pause();
    video_natureza.play();}      
}
