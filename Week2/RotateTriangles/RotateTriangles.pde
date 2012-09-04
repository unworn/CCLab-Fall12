float size= 100;
int r, g, b;

void setup() {
  size(600, 600);
  background(255);
  smooth();
  noFill();
  r = 255;
  g = 0;
  b = 0;
}

void draw(){
  if (frameCount % 10 == 0) {
    
    stroke(r,g,b);
    pushMatrix();
    translate(mouseX, mouseY);
    rotate(radians(frameCount * 2  % 360));
 
    triangle(0, size, size/2, 0, size, size);
    popMatrix();
    size+=0.25; //move this to outside the if statement to see variation
    r--;
    g++;
    b++;
  }

}

