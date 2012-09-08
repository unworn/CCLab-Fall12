/*/////////////////////
Created by Nidhi Malhotra
for MFADT CCLab Fall 12
/////////////////////*/

Donut myDonut;
Donut myDonut2;

void setup() {
  size(500,500);
  // Initialize Car object
  myDonut = new Donut(2); // Initialize car object in setup() by calling constructor.
  myDonut2 = new Donut(-1);
}

void draw() {
  background(255);
  // Operate Car object.
  myDonut.move(); // Operate the car object in draw( ) by calling object methods using the dots syntax.
  myDonut.display(color(150,0,130));
  
  myDonut2.move(); // Operate the car object in draw( ) by calling object methods using the dots syntax.
  myDonut2.display(color(250,0,117));
}

//MAKE ANOTHER OBJECT
//PASS ARGUMENTS
