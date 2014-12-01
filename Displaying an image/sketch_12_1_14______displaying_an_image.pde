PImage image;

void setup(){
 size(700,700);
image = loadImage("homer.jpg");
imageMode(CENTER);
noCursor();
  
}


void draw(){
  background(255);
  image(image, mouseX, mouseY, image.width, image.height);
  
  
}
