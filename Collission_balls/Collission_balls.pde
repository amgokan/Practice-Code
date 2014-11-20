PVector mouse, circle, vel, loc2, vel2;
float sz=100;
float sz2=200;
int count=0;

void setup() {
  size (700, 700);
  circle= new PVector (width/2, height/2);
  vel = PVector.random2D();
  vel2= PVector.random2D();
  loc2 = new PVector (120, 120);
}

void draw() {

  mouse= new PVector (mouseX, mouseY);
  background(0);
  circle.add(vel);
  loc2.add(vel2);
  ellipse(circle.x, circle.y, sz, sz);
  ellipse(loc2.x, loc2.y, sz2, sz2);
  
  if (loc2.x-sz<0 || loc2.x+sz>width){
  vel2.x.mult(-1);
  }

  if (loc2.y-sz<0 || loc2.y+sz>height){
  vel2.y.mult(-1);
  }
  
  if (circle.dist(loc2)<(sz/2)+(sz2/2)) {
    println("GGG");
  }
}

