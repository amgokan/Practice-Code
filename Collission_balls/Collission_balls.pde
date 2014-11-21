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
  fill(255,255,255);
  ellipse(circle.x, circle.y, sz, sz);
 fill(255,0,0);
  ellipse(loc2.x, loc2.y, sz2, sz2);
  
  if (loc2.x-sz2/2<0 || loc2.x+sz2/2>width){
  vel2.x*=-1;
  println("red off side");
  }

  if (loc2.y-sz2/2<0 || loc2.y+sz2/2>height){
  vel2.y*=-1;
  println("red off top");
  }
  
  if (circle.x-sz/2<0 || circle.x+sz/2>width){
   vel.x*=-1; 
   println("white off side");
  }
  if (circle.y-sz/2<0 || circle.y+sz/2>height){
   vel.y*=-1; 
   println("white off top");
  }
  
  if (circle.dist(loc2)<(sz/2)+(sz2/2)) {
    println("GGG");
  }
}

