
float sz=50;


void setup(){
  size(700,700);

  
  
}


void draw(){
  
  PVector mouse= new PVector(mouseX,mouseY);
PVector circle =  new PVector(350,350);
  
  println(mouse.x, mouse.y);
  background(0);
  fill(255);
  ellipse(circle.x, circle.y, sz, sz);
  if(dist(mouse.x, mouse.y, circle.x, circle.y)<sz/2){
   println("FFFFF"); 
  }
  
  
}
