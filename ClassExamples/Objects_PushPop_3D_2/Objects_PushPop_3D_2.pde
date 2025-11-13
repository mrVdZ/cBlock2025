// Welcome to the 3D version of this code!


void setup(){
  size(800, 800, P3D);
  
  background(255);
  
  frameRate(60);
  
}

float i = 0;
float x = 0;


void draw(){
  
  background(255);
  
  //noStroke();
  //lights(); // adds default lighting to our 3d environment
  pushMatrix();
    translate(x, height/2);
    rotateY(i);
    sphere(250);
  popMatrix();
  
  i+=0.01;
  x+= 1;
}
