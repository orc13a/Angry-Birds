float x;
float y;
float g = 9.81;
float t;
float x0 = 0;
float y0 = -800;
float alpha = PI/4;
float L = 10;
float A = alpha;
float E = 50 * (L*L);
float m = 1; // Fulgens vægt (kg)
float u0 = sqrt((2*E)/(m*(1+(A*A))));
float v0 = A*sqrt((2*E)/(m*(1+(A*A))));

float[] r = new float[2];

void setup() {
  //fullScreen();
  size(1440, 800);
  frameRate(120);
  rectMode(CENTER);
}

void draw() {
  //clear();
  //background(255);
  
  
}

void mousePressed() {
  clear();
  background(255);
  kast();
  
  
  /*x = v0*cos(alpha)*t+x0;
  y = -0.5*g*(t*t)+v0*sin(alpha)*t+y0;
  
  y = y * (-1);
  
  t = t + 0.5;
  
  r[0] = x;
  r[1] = y;
  
  fill(0);
  circle(x, y, 10);
  
  println(r);
  println('-');*/
}

void kast() {
  x = u0 * t + x0;
  y = -0.5*g*(t*t)+v0*t+y0;
  
  y = y * (-1);
  
  r[0] = x;
  r[1] = y;
  
  t = t + 0.5;
  
  println(y0);
  println('-');
  
  fill(0);
  circle(x, y, 10);
}
