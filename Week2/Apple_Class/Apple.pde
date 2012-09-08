class Donut { 
  color c; 
  float xPos;
  float yPos;
  float ySpeed;
  float acc;

  Donut(float tempYSpeed) { 
    c = color(209, 67, 15);
    xPos = random(0,width);
    yPos = height/2;
    ySpeed = tempYSpeed;
    acc = random(0.05,0.3);
  }

  void display(color tempC) { 
    rectMode(CENTER);
    noStroke();
    fill(tempC);
    smooth();
    ellipse(xPos,yPos,20,20);
    fill(255);
    ellipse(xPos,yPos, 10, 10);
  }

  void move() { 
    ySpeed += acc;
    yPos +=  ySpeed;
    if ((yPos >= height)||(yPos==0)) {
      ySpeed *= -1;
    }
    
  }
}
