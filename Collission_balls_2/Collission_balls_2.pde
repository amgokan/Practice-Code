int count=100;
PVector[] loc = new PVector[count];
PVector[] vel = new PVector[count];
PVector[] acc = new PVector[count];
float[] siz = new float[count];

void setup() {
  size(700, 700);

  for (int i=0; i<count; i++) {
    siz[i]=random(20,50);
    //initialize values within arays
    loc[i]=new PVector (random(siz[i], width-siz[i]), random(siz[i], height-siz[i]));
    vel[i]=PVector.random2D();
    acc[i]=new PVector(0, 0);
  }
}

void draw() {
  fill(0);
  background(255);
  for (int i=0; i<count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    ellipse(loc[i].x, loc[i].y, siz[i], siz[i]);  

    for (int j=0; j<count; j++) {

      if (i!=j) {
        
        if (loc[i].dist(loc[j])<siz[i]/2 + siz[j]/2){
        vel[i]=PVector.sub(loc[i],loc[j]);
        vel[i].normalize();
        vel[j]=PVector.sub(loc[j], loc[i]);
        vel[j].normalize();
        }


/*
        if (loc[i].dist(loc[j])<siz[i]/2+siz[j]/2) {
          
          if(loc[i].x<loc[j].x){
           vel[i].x=-abs(vel[i].x);
           vel[j].x=-abs(vel[j].x);
          }
          else{
            vel[i].x = abs(vel[i].x);
            vel[j].x = -abs(vel[j].x);            
          }
          if (loc[i].y < loc[j].y) {   
            vel[i].y = -abs(vel[i].y);
            vel[j].y = abs(vel[j].y);
          } else {
            vel[i].y = abs(vel[i].y);
            vel[j].y = -abs(vel[j].y);
          }
        }
      }
  
  }
*/    

    if (loc[i].x + siz[i]/2 > width || loc[i].x - siz[i]/2 < 0) {
      vel[i].x *= -1;
    }
    if (loc[i].y + siz[i]/2 > height || loc[i].y - siz[i]/2 < 0) {
      vel[i].y *= -1;
    }
    
  }

