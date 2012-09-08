/*/////////////////////
Created by Nidhi Malhotra
for MFADT CCLab Fall 12
/////////////////////*/

float size = 100;
int r, g, b;

void setup() {
  size(600, 600);
  background(255);
  smooth();
  noStroke();
  r = 255;
  g = 0;
  b = 100;
}

void draw(){
  if (frameCount % 10 == 0) {
    stroke(r,g,b);
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(frameCount * 2  % 360));
    triangle(0, size, size/2, 0, size, size);
    rect(0, 0, 50, 50);
    popMatrix();
    size+=0.25; //move this to outside the if statement to see variation
    r--;
    g++;
    b++;
    
    //rect(0,0, 50,50);
  }
  
  //rect(0,0, 50,50);
}

