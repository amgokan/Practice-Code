float x, y;
float vx, vy;
float ax, ay;

int sz=100;

void setup() {
  size(700, 700);
  x=width/2;
  y=height/2;
  vx=0;
  vy=0;
  ax=-.01;
  ay=-.01;
}

void draw() {
  ellipse(x, y, sz, sz);
  vx+=ax;
  vy+=ay;
  x+=vx;
  y+=vy;

ax=random(-.1,.1);
ay=random(-.1,.1);

  vx=constrain(vx, -5, 5);
  vy=constrain(vy, -5, 5);

  if (x-sz/2>width) {
    x=-sz/2;
  }
  if (x+sz/2<0) {
    x=width+sz/2;
  }
  if (y-sz/2>height) {
    y=-sz;
  }
  if (y+sz/2<0) {
    y=height+sz/2;
  }
}



