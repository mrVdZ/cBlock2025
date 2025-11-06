

// This is an example to show how objects work...
// but first, we have to se pushMatrix() and popMatrix()


void setup()

{
  
  size(800, 800);
  background(50, 50, 200);
  rectMode(CENTER);
  frameRate(12);
  
}

int i = 0;


void draw()

{
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
