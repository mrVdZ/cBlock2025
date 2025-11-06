

// This is an example to show how objects work...
// but first, we have to se pushMatrix() and popMatrix() 

// A Class is just templates....
// an object is just the implement class


// global variables
int i = 0;
BouncyBall ball1; // Declared our object

void setup()

{
  
  size(800, 800, P3D);
  background(50, 50, 200);
  rectMode(CENTER);
  frameRate(12);
  
  ball1 = new BouncyBall(); // Defining our object
  
}




void draw()

{
  ball1.updateBB();
  ball1.changeColorBB();
  ball1.drawBB();
  
    // unaffected rectangle
    fill(255, 180, 100);
    rect(200, 200, 100, 100);
  
  pushMatrix(); // Make a virtual canvas
  // Make transformations that only affect the virtual canvas
    translate(100, i);
    rotate(PI/4.0);
    // Order of transformations matters!
    // Transforms affect the entire virtual canvas, not just what you draw!
    fill(255, 180, 100);
    rect(0, 0, 100, 100);
  popMatrix(); // Release the virtual canvas that you made
  
  //// unaffected rectangle
  //fill(255, 180, 100);
  //rect(0, 0, 100, 100);
 
  i++;
}



 // this is the template class!
class BouncyBall {
  
  // This is the constructor... it turns the class into an object
  BouncyBall(){
    // This function runs once when the object is constructed
    // You can use it to do the "same" thing to every object
  }
  
  int xPos = 10;
  int yPos = 20;
  int w = 100;
  int h = 100;
  
  void changeColorBB(){
    fill(255);
  }
  
  void drawBB(){
    ellipse(xPos, yPos, w, h);
  }
  
  void updateBB(){
    // updates, without drawing
    xPos = 0;
    yPos += 30;
  }
  
  
}
