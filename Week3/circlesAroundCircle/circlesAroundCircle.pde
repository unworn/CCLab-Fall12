/*/////////////////////
Created by Nidhi Malhotra
for MFADT CCLab Fall 12
/////////////////////*/

int numberOfCircles = 40;
float x, y, angle;

int radius = 100;

void setup(){
  
  size(600, 600);
  smooth();
  noStroke();
  fill(250, 0, 117);
}

void draw() {
  background(255);
  //total angle of a circle is TWO PI or 360 degrees
  //divide the total angle by number of circles in order to get the angle for the placement of each circle
  angle = TWO_PI / numberOfCircles;
  
  for(int i=0; i<numberOfCircles; i++){
    
    // x coordinate of small circle around the radius of big circle
    x = (mouseX) + (radius * cos(angle*i));  
    
    // y coordinate of small circle around the radius of big circle
    y = (mouseY) + (radius * sin(angle*i));
    ellipse(x, y, 10, 10);

  }
  
}
