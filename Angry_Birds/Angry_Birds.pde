// +----------------------------------+
// |        -- PLAN / TO DO --        |
// +----------------------------------+
// [ NOT DONE ]  Lav slangebøsse og den affyret fugls skal have en flyve bane

void setup() {
  fullScreen();
  frameRate(120);
  rectMode(CENTER);
}

void draw() {
  clear();
  background(255);
  
  shotStandMain();
  shotBand();
}
