/*/////////////////////
Created by Nidhi Malhotra
for MFADT CCLab Fall 12
/////////////////////*/

ArrayList donuts;

void setup() {
  size(500,500);
  donuts = new ArrayList();
  donuts.add(new Donut(width/2, 0));
}

void draw() {
  background(250, 0, 117);
  for (int i = 0; i < donuts.size(); i++) { 
    // An ArrayList doesn't know what it is storing so we have to declare the object
    Donut myDonut = (Donut) donuts.get(i);
    myDonut.move();
    myDonut.display();
    if (myDonut.finished()) {
      // Items can be deleted with remove()
      donuts.remove(i);
      println(donuts.size()); //check the no. of items in your arraylist
    }
  }
}
void mousePressed() {
  // A new Donutis added to the ArrayList (by default to the end)
  donuts.add(new Donut(mouseX, mouseY));
}
