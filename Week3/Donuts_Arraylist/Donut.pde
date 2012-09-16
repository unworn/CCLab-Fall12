class Donut { 
  color c; 
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float acc;
  float life = 255;

  Donut(float tempX, float tempY) { 
    c = color(255);
    xPos = tempX;
    yPos = tempY;
    ySpeed = random(1,2);
    xSpeed = random(-4,4);
    //acc = random(0.05,0.3);
    acc = 0;
  }

  void display() { 
    rectMode(CENTER);
    noStroke();
    fill(c);
    smooth();
    ellipse(xPos,yPos,20,20);
    fill(250, 0, 117);
    ellipse(xPos,yPos, 10, 10);
  }

  void move() { 
    ySpeed += acc;
    yPos +=  ySpeed;
    xSpeed += acc;
    xPos += xSpeed;
    if ((yPos >= height)||(yPos<=0)) {
      ySpeed *= -1;
    }
    
   if ((xPos >= width)||(xPos<=0)) {
      xSpeed *= -1;
    }
   if((ySpeed == 0)&&(yPos >=height)){
     yPos = height;
   }
  }
  
 boolean finished() {
    // Balls fade out
    life--;
    if (life < 0) {
      return true;
    } else {
      return false;
    }
  }
}
