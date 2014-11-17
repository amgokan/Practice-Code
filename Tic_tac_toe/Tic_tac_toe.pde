int t=4;
int y=9;
int u=2;
int g=3;
int h=5;
int j=7;
int b=8;
int n=1;
int m=6;

int ps=0;
int cs=0;
float counter=1;


//////////////////////////////////
////what i have doen is set up a magic square.  when you place your move, it adds a value to your "score" (named ps).  if your "score" (or the computer's score) =15 (the sum of any direction in the magic square) then there is a win
//the letters (t,y,u, etc...) are the letters on the keyboard in a 3x3 square
//i have code to check what the "cs" (computer "score") is, to see if the comp can make a win on its next move.  the only problem is that it can have a score of 7 by having either (t and g) or (j alone), which does wonky things to its decision making



void setup() {
  background(255);
  stroke(0);
  size(600, 600);
  line(200, 0, 200, 600);
  line(400, 0, 400, 600);
  line(0, 200, 600, 200);
  line(0, 400, 600, 400);
    
}

/////////////////////////////
///this code draws player moves, and adds it to "ps"
///////////////////////////

void mousePressed(){
  if (counter%2==1){ /////makes sure its the player's turn
 if (mouseX<200){
   if (mouseY<200){
     //TOPLEFT T
     ps+=t;
     fill(255,0,0);
rect(0,0,200,200);
counter++;
   }
   if (mouseY>=200 && mouseY<400){
     //MIDLEFT G
     ps+=g;
     fill(255,0,0);
rect(0,200,200,200);
counter++;
   }
   if (mouseY>400){
     //LOWLEFT B
     ps+=b;
     fill(255,0,0);
rect(0,400,200,200);
counter++;
   }
 }
 if (mouseX>=200 && mouseX<400){
   if (mouseY<200){
     //TOPMID Y
     ps+=y;
     fill(255,0,0);
rect(200,0,200,200);
counter++;
   }
   if (mouseY>=200 && mouseY<400){
     //MIDMID H
     ps+=h;
     fill(255,0,0);
rect(200,200,200,200);
counter++;
   }
   if (mouseY>400){
     //LOWMID N
     ps+=n;
     fill(255,0,0);
rect(200,400,200,200);
counter++;
   }
 }
 if (mouseX>400){
   if (mouseY<200){
     //TOPRIG U
     ps+=u;
     fill(255,0,0);
rect(400,0,200,200);
counter++;
   }
   if (mouseY>=200 && mouseY<400){
     //MIDRIG J
     ps+=j;
     fill(255,0,0);
rect(400,200,200,200);
counter++;
   }
   if (mouseY>400){
     //LOWRIG M
     ps+=m;
     fill(255,0,0);
rect(400,400,200,200);
counter++;
   }
 }
  }
  
}




























void draw(){
   checkwin();
   if (counter%2==0){  /////makes sure its the computer's turn
   if (cs==13)
   if (cs==11)
   if (cs==6)
   if (cs==8)
   if (cs==10)
   if (cs==12)
   if (cs==9)
   if (cs==7)
   if (cs==14)
   
////////let the player go, checkwin
//let computer go
  ///check for one poss comp win
    //go there
    //checkwin
  ///check for poss player win
    //go there
    //checkwin
  //if no psswin for either, go random square
  //checkwin
}

void checkwin(){
  if (ps==15 || cs==15){
    //win
    background(0);
    println("WIN");
    noLoop();    
  }
  
}



























