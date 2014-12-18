ArrayList<Particle> particles;
Blocks blocks = new Blocks();
int count=0;
int click=0;
void setup() {
  size(700, 700);
  particles = new ArrayList<Particle>();
}

void draw() {

  background(255);
  if (click%2==1) {
    particles.add(new Particle(new PVector(width/2, 100)));
    count ++;
  }
  for (int i = 0; i < particles.size (); i++) {
    Particle p = particles.get(i);
    p.run();
    if (p.isDead()) {
      println("dead");
      particles.remove(i);
    }
  }
  blocks.drawrect();
}




void mouseClicked() {
  click+=1;
}

