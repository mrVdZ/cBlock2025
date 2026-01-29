// key/keyCode
// --> key is a single character; keyCode is special keys (not ASCII)




// perspective//orthogonal // (if we have time, frustum)
// --> what you see, from where, as determined by the camera


// shaders
// hex/unhex

 // github.com/mrvdz/cblock2025

int diameter = 200;



int lines = 50;

int lineThickness = 1;

 

color ballColor = color(255, 255, 255);

color lineColor = color(150, 150, 150);

color backgroundColor = color(0, 0, 0);

 

 

void setup(){

  size(800, 800, P3D);
  

}
 

void draw(){
  
  checkKeys(); // Checks for a key press

  // Draw Background

  background(backgroundColor);

 
  // Draw Lines

  for(int i = 0; i < lines; i++){

    strokeWeight(lineThickness);
    stroke(lineColor);

    int x1 = (width/lines) * i;
    int y1 = 0;
    int x2 = (width/lines) * i;
    int y2 = height;

    line(x1, y1, x2, y2);
  }


  // Draw Ellipse

  ellipseMode(CENTER);
  noStroke();
  ellipse(width/2, height/2, diameter, diameter);
  
  
  // Camera
  
  // Our Code
  float fovy = PI/2;
  println(fovy);
  float aspect = 1; // our number is ~1; their number is ~1000
  float zNear = 100;
  float zFar = float(mouseX);
  
  perspective(fovy, aspect, zNear, zFar);
  
  // Their Code
  //float cameraY = height/2.0;
  //float fov = mouseX/float(width) * PI/2;
  //float cameraZ = cameraY / tan(fov / 2.0);
  //float aspect = float(width)/float(height);
  //if (mousePressed) {
  //  aspect = aspect / 2.0;
  //}
 //  perspective(fov, aspect, cameraZ/10.0, cameraZ*10.0);
  
  
  
  // Box 
  
  lights();
  pushMatrix(); 
  translate(width/2, height/2);
  rotateX(PI/3);
  box(180);
  popMatrix();
}



void checkKeys(){
  
  if (keyPressed) 
  {
    println("a key is pressed, but which key?");
    if (key == CODED) 
    {
      //println(" It's either a lowercase b or a capital B"); 
      
      println("this is a coded key");
    }
  }
}
