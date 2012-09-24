class Donut { 
  color c; 
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float acc;
  float rad;

  Donut(float tempSpeed) { 
    c = color(209, 67, 15);
    xPos = random(0,width);
    yPos = random(0,height);
    ySpeed = tempSpeed;
    xSpeed = tempSpeed;
    acc = random(0.05,0.3);
    rad = 10;
  }

  void display(color tempC) { 
    rectMode(CENTER);
    noStroke();
    fill(tempC);
    smooth();
    ellipse(xPos,yPos,20,20);
    fill(255);
    ellipse(xPos,yPos, rad, rad);
  }

  void move() {
   
       
    if((xPos > width-rad/2) || (xPos < rad/2)){
      xSpeed = -xSpeed;
    }
    
    if((yPos > width-rad/2) || (yPos < rad/2)){
      ySpeed = -ySpeed;
    } 
    //ySpeed += acc;
    yPos +=  ySpeed;
    if ((yPos >= height)||(yPos<=0)) {
      ySpeed *= -1;
    }
    
    //xSpeed += acc;
    xPos +=  xSpeed;
    if ((xPos >= width)||(xPos<=0)) {
      xSpeed *= -1;
    }
  }
  
  void collide(Donut hitBall){
    // Let’s calcuate the distance between this class (self) and targetBall

    float distance = dist(xPos, yPos,hitBall.xPos, hitBall.yPos);
      // If the distance between two object equals for smaller than
    // the sum of the radius of them, Collision!

    if(distance <= (rad/2 + hitBall.rad/2)){
        // Let’s change the direction

      if((frameCount%2) == 1)

      {
        xSpeed = -xSpeed; 
      }

      else
      {
        ySpeed = -ySpeed; 
      }
    }
  }
 }

