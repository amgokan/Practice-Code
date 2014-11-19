PVector l;
PVector v;
PVector a;

int sz=10;

void setup() {
  
 // background(0);
  
  size(700, 700);
  
  l=new PVector(width/2, height/2);
  v=new PVector(0,0);
  a=new PVector(0,0);  
  
  

}

void draw() {
stroke(255,0,0,50);
  line(l.x, l.y, l.x+(4*v.x*sz), l.y+(4*v.y*sz));
  stroke(0);
  v.add(a);
  l.add(v);
  
  fill(255,255,255);
  stroke(0);
  ellipse(l.x, l.y, sz, sz);
  
  stroke(0,0,255,35);
  fill(0,0,0,0);
  ellipse(l.x, l.y, sz*3, sz*3);
  
  stroke(190,0,190);
  fill(0,0,0,0);
  ellipse(l.x, l.y, sz/5, sz/5);
  
  
a.set(random(-.1,.1), random(-.1,.1));


 v.limit(2);

  if (l.x-sz/2>width) {
    l.x=-sz/2;
  }
  if (l.x+sz/2<0) {
    l.x=width+sz/2;
  }
  if (l.y-sz/2>height) {
    l.y=-sz/2;
  }
  if (l.y+sz/2<0) {
    l.y=height+sz/2;
  }
}



