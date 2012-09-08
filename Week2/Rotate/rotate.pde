
    void setup() {
      size(600,600);
      noStroke();
      background(255);
    }
    
    void draw() {
      
      fill(0, 153, 255);
      rectMode(CENTER);
      rect(width/2,height/2,width/2,height/2);

      
      fill(120);
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(45)); 
      rectMode(CENTER);
      rect(0,0,width/2,height/2);
      popMatrix();
    }


