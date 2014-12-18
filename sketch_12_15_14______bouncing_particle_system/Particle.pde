class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float diam =10;

  Particle(PVector l) {

    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    location = l.get();
    lifespan = 2000;
  }


  void run() {
    update();
    display();
    wallbounce();
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0;
  }

  void display() {
    stroke(0, lifespan);
    fill(0, 100);
    ellipse(location.x, location.y, diam, diam);
  }

  void wallbounce() {
    if (location.y+4>=height-5-diam || location.y<=0) {
      velocity.y=(0.9)*-abs(velocity.y);
    }
    if (location.x>=width-diam || location.x<=0) {
      velocity.x*=-.5;
    }
  }






  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}

