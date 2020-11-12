// Slangebøsse funktioner


int standHeight = 80; // Slangebøsse højde
int standXPostion = 250; // Slangebøsse X koordinat
int maxBandLength = 200; // snor længde
float savedMouseX = 0;
float savedMouseY = 0;

void shotStandMain() {
  rect(standXPostion, height-((standHeight/2)+groundHeight), 15, standHeight, 5, 5, 5, 5); // x, y, w, h, corner-radius*, radius*, radius*, radius*
}

void shotBand() { // https://forum.processing.org/two/discussion/7979/how-do-i-draw-a-line-with-only-starting-point-max-length-direction
  //line(standXPostion, height-(standHeight+groundHeight), mouseX, mouseY);
  
  translate(standXPostion, height-(standHeight+groundHeight));
  PVector p = new PVector( 0, 0 );
  p.limit(100);
  line(0,0,p.x,p.y);
  
  /*if(dist(standYPostion, height-standHeight, mouseX, mouseY) <= maxBandLength && mouseX < maxBandLength ) {
    savedMouseX = mouseX;
    savedMouseY = mouseY;
    line(standYPostion, height-standHeight, mouseX, mouseY);
  } else if(dist(standYPostion, height-standHeight, mouseX, mouseY) > maxBandLength || mouseX > maxBandLength) {
    line(standYPostion, height-standHeight, savedMouseX, savedMouseY);
  }*/
}
