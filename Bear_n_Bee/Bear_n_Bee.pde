PImage background; 

void draw() { 
  background(background); 

//Creates a bouncing ball that accelerates towards the ground
class Ball{
  float x;
  float y;
  float vy;
  float ay;
  int radius;
  int redness;
  int greenness;
  int blueness;
  float time;
  int bounces;
  
  //defines a constructor
  Ball(float p1,float p2, float p3, float p4, int p5, int p6, int p7, int p8, float p9, int p10){
    x=p1;
    y=p2;
    vy=p3;
    ay=p4;
    radius=p5;
    redness=p6;
    greenness=p7;
    blueness=p8;
    time=p9;
    bounces=p10;
  }
}
  
  Ball myball;
  float timepassed=0;
  
void setup() {
  size(570,330); 
  background = loadImage("sleepybear.jpg"); 
  frameRate(60);
  myball=new Ball(0,-25,0,0,25,int(random(255)),int(random(255)),int(random(255)),0,0); 
}

void draw(){
  background(background);
  if(mousePressed==true)
    {myball=new Ball(mouseX,-25,0,98,25,int(random(255)),int(random(255)),int(random(255)),0,0);
     mousePressed=false;
    }
  drawball(myball);
}

void drawball(Ball aball){
  fill(aball.redness,aball.greenness,aball.blueness);
  ellipse(int(aball.x),int(aball.y),aball.radius,aball.radius);
  aball.y=aball.y+(aball.vy*timepassed)+(0.5*aball.ay*aball.time*aball.time);
  aball.vy=aball.vy+(aball.ay*aball.time);
  aball.time=aball.time+0.01667;
  if(aball.y>=height)
    {aball.vy=(-0.9)*aball.vy;
     aball.bounces=aball.bounces+1;
     aball.time=0;
    }
}