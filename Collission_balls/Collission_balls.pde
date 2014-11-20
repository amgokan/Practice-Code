PVector mouse, circle, vel;
float sz=100;
int count=0;

void setup() {
  size (700, 700);
  circle= new PVector (width/2, height/2);
  vel = PVector.random2D();
}

void draw() {
  mouse= new PVector (mouseX, mouseY);
  background(0);
  circle.add(vel);

  ellipse(circle.x, circle.y, sz, sz);

  if (circle.dist(mouse)<sz/2) {

    if (circle.x<mouse.x) {
      vel.x=-abs(vel.x);
    } else {
      vel.x=abs(vel.x);
    }
    if (circle.y<mouse.y) {
      vel.y=-abs(vel.y);
    } else {
      vel.y=abs(vel.y);
    }

    count++;
    println("touch?", count);
  }
}

