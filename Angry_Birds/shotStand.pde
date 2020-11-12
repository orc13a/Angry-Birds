// Slangebøsse funktioner

int standHeight = 80;
int standYPostion = 250;
int maxBandLength = 200;
float savedMouseX = 0;
float savedMouseY = 0;

void shotStandMain() {
  rect(standYPostion, height-(standHeight/2), 15, standHeight, 5, 5, 5, 5); // x, y, w, h, corner-radius*, radius*, radius*, radius*
}

void shotBand() {
  if(dist(standYPostion, height-standHeight, mouseX, mouseY) <= maxBandLength && mouseX < maxBandLength ) {
    savedMouseX = mouseX;
    savedMouseY = mouseY;
    line(standYPostion, height-standHeight, mouseX, mouseY);
  } else if(dist(standYPostion, height-standHeight, mouseX, mouseY) > maxBandLength || mouseX > maxBandLength) {
    line(standYPostion, height-standHeight, savedMouseX, savedMouseY);
  }
}
