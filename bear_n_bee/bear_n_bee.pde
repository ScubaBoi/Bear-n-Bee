PImage background; 
PImage b; 
int x = 220;
int y = 137; 
int diamX = 4;
int diamY = 4;

void setup() {
  size(570,330); 
  background = loadImage("sleepybear.jpg"); 
  b = loadImage("bee.png"); 
}

void draw() {
  background(background);
  frameRate(30); 
  
  fill(255); 
  stroke(0); 
  ellipse(220,135,25,20); 
  ellipse(178,130,25,20); 

    image(b,mouseX,mouseY);
}

void eyes(int x, int y, int diamX, int diamY) { 
   fill(0);
   ellipse(x,y,diamX,diamY);
   ellipse(x-83,y-7,diamX,diamY); 
   
}
  
  