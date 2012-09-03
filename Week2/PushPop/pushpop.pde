void setup() {
  size(600,600);
  noStroke();
}

void draw() {
  background(255);
  
  fill(255,0,117); //pink rectangle
  rect(mouseX,mouseY,50,50);

  pushMatrix();
    translate(300,50);
    fill(14,206,229); //blue rectangle
    rect(mouseX,mouseY,50,50);
  popMatrix();

  fill(229,194,14); //yellow rectangle
  rect(100,100,50,50);
}


