

// This is an example to show how objects work...
// but first, we have to se pushMatrix() and popMatrix()


void setup()

{
  
  size(800, 800);
  background(50, 50, 200);
  
}


void draw()

{
    // unaffected rectangle
    fill(255, 180, 100);
    rect(200, 200, 100, 100);
  
  pushMatrix(); // Make a virtual canvas
  // Make transformations that only affect the virtual canvas
    translate(300, 300);
    fill(255, 180, 100);
    rect(200, 200, 100, 100);
  popMatrix(); // Release the virtual canvas that you made
  
  // unaffected rectangle
  fill(255, 180, 100);
  rect(0, 0, 100, 100);
 
  
}
