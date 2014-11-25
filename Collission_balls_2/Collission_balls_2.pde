int count=100;
PVector[] loc = new PVector[count];
PVector[] vel = new PVector[count];
PVector[] acc = new PVector[count];
float[] siz = new float[count];
float[] mass = new float[count];
float mindiam = 10;
float maxdiam = 25;

void setup() {
  size(700, 700);

  for (int i=0; i<count; i++) {
    siz[i]=random(mindiam, maxdiam);
    //initialize values within arays
    loc[i]=new PVector (random(siz[i], width-siz[i]), random(siz[i], height-siz[i]));
    vel[i]=PVector.random2D();
    acc[i]=new PVector(0, 0);
    mass[i] = map(siz[i], mindiam, maxdiam, .5, 1.5);
  }
}


void draw() {
  println(frameRate);
  fill(0);
  background(255);
  for (int i=0; i<count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    fill(map(vel[i].x,0,1, 0,255), map(vel[i].x,0,1, 0,2), map(vel[i].x,0,1, 0,2));
     for (int s=1; s<count; s++) {
    line(loc[s].x, loc[s].y, loc[s-1].x, loc[s-1].y);
    }
    ellipse(loc[i].x, loc[i].y, siz[i], siz[i]);  

   


    if (loc[i].x + siz[i]/2 > width || loc[i].x - siz[i]/2 < 0) {
      vel[i].x *= -1;
    }
    if (loc[i].y + siz[i]/2 > height || loc[i].y - siz[i]/2 < 0) {
      vel[i].y *= -1;
    }


    for (int j=0; j<count; j++) {

      if (i!=j) {

        if (loc[i].dist(loc[j])<siz[i]/2 + siz[j]/2) {
          
           vel[i] = PVector.sub(loc[i], loc[j]);
           vel[i].normalize();                        
          vel[i].div(mass[i]); 
         /* 
          vel[i]=PVector.sub(loc[i], loc[j]);
          vel[i].normalize();
          vel[j]=PVector.sub(loc[j], loc[i]);
          vel[j].normalize();
      */  
      }
      }
    }
  }
}

