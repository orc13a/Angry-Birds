// +----------------------------------+
// |        -- PLAN / TO DO --        |
// +----------------------------------+
// [ NOT DONE ]  Lav slangebøsse og den affyret fugls skal have en flyve bane

int groundHeight = 30;

void setup() {
  fullScreen();
  frameRate(120);
  rectMode(CENTER);
}

void draw() {
  clear();
  background(255);
  
  // Ground
  noStroke();
  fill(0,255,0);
  rect(width/2, height-(groundHeight/2), width, groundHeight);
  stroke(1);
  fill(255);
  
  shotStandMain();
  shotBand();
}
