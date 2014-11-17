float x, y;
float vx, vy;
float ay=.1;

void setup() {
  size(700, 700);
  x=350;
 vx=random(-0.3,0.3);
  y=350;
}

void draw() {
  //background(0);
  fill(255);
  vy+=ay;
  y+=vy;
  x+=vx;
  ellipse(x, y, 30, 30);
  println(y);
  

  

  if (x>=width-15 || x<=15) {
    vx*=-1;
  }

  if (y>=height-15 || y<=15) {
    vy*=-1;
  }
}

