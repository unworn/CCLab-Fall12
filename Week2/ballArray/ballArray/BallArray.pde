/*/////////////////////
Created by Nidhi Malhotra
for MFADT CCLab Fall 12
/////////////////////*/

// initialize variables
int ballCount = 50;
//int vel = 5;

//set up position arrays
float [] posX = new float [ballCount];
float [] posY = new float [ballCount];

// set up velocity arrays -- each ball in the array will have its own random velocity
float [] velX = new float [ballCount];
float [] velY = new float [ballCount];

void setup() {
  size(600,600);
  smooth();
  noStroke();
  
  // initialize each ball at a random starting position
  for(int i=0; i < ballCount; i++) {
    posX[i] = random(0,width);
    posY[i] = random(0,height);
    
    velX[i] = random(-5,5);
    velY[i] = random(-5,5);

    
  }
}

void draw() {
  
  background(71,190,234);

  // increment each ball by its respective velocity, draw the balls
  for(int i=0; i < ballCount; i++) {
    posX[i] += velX[i];
    posY[i] += velY[i];

    ellipse(posX[i],posY[i],10,10);
    
    if(posX[i] > width || posX[i] < 0){
      velX[i] *= -1;
    }
    
    if(posY[i] > height || posY[i] < 0){
      velY[i] *= -1;
    }
  }
  
}

