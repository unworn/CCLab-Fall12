/*/////////////////////
Created by Nidhi Malhotra
for MFADT CCLab Fall 12
/////////////////////*/

Donut[] myDonuts = new Donut[10];

void setup() {
  size(500,500);
    for(int i =0; i<myDonuts.length; i++){
      myDonuts[i] = new Donut();
    }
}

void draw() {
  background(255);
  
  for(int i=0; i<myDonuts.length; i++){
  myDonuts[i].move(); 
  myDonuts[i].display(i*5);
  }
}

//MAKE ANOTHER OBJECT
//PASS ARGUMENTS
