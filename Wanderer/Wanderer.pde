PVector l;
PVector v;
PVector a;

int sz=30;

void setup() {
  
  background(0);
  
  size(700, 700);
  
  l=new PVector(width/2, height/2);
  v=new PVector(0,0);
  a=new PVector(0,0);  
  
  

}

void draw() {
  
  fill(random(255), random(255), random(255));
  
  v.add(a);
  l.add(v);
  
  ellipse(l.x, l.y, sz, sz);
  
a.set(random(-.1,.1), random(-.1,.1));


 v.limit(2);

  if (l.x-sz/2>width) {
    l.x=-sz/2;
  }
  if (l.x+sz/2<0) {
    l.x=width+sz/2;
  }
  if (l.y-sz/2>height) {
    l.y=-sz;
  }
  if (l.y+sz/2<0) {
    l.y=height+sz/2;
  }
}



