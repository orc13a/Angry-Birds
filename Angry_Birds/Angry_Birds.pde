float x;
float y;
float g = 9.81;
float t;
float x0 = 0;
float y0 = 0;
float alpha = PI/4; 
float v0 = 15;

float[] r = {x, y};

void setup() {
  //fullScreen();
  size(500, 500);
  frameRate(120);
  rectMode(CENTER);
}

void draw() {
  clear();
  background(255);
 
  
}

void mousePressed(){
x = v0*cos(alpha)*t+x0;
y = -0.5*g*(t*t)+v0*sin(alpha)*t+y0;

r[0] = x;
r[1] = y;

t++;

println(r);


}
