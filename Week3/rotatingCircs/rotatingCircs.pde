/*/////////////////////
Created by Nidhi Malhotra
for MFADT CCLab Fall 12
/////////////////////*/

float rad;
float x, y, angle;
void setup(){
  size(600, 600);
  fill(250, 0, 117);
  smooth();
  noStroke();
}


void draw() {
  background(255);

  x = mouseX;
  y = mouseY;

  rad = 100;

  for(int i =0; i<10; i++){
    angle = (frameCount * 0.1) *i;
    x= mouseX + (rad * cos(angle));
    y= mouseY + (rad * -sin(angle));
    ellipse(x, y, 20, 20);
  }
}

