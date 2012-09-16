/*/////////////////////
Created by Nidhi Malhotra
for MFADT CCLab Fall 12
/////////////////////*/

float angle, change;
float xPos, yPos;
float r, g, b, rChange;

void setup(){
  size(600,600);
  smooth();
  xPos = width/2;
  yPos = height/2;
  g = 100;
  b = 100;
}

void draw(){
  background(255);
  angle = frameCount * 0.09; 
  r = frameCount * 0.09;
  change = map(sin(angle),-1, 1, 0, 1);
  
  rChange = map(sin(r),-1, 1, 0, 255);
  fill(rChange, g, b);
  noStroke();
  ellipse(xPos, yPos, 300*change, 300*change);
  
}
