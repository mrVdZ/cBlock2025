

// This is a sketch about bouncing around a 2D surface

// Hello this is a comment!

void setup(){
  size(1000, 1000);
  lsInitialize();
}


void draw(){
  background(220, 255, 230);
  
  lsUpdate();
  lsDraw();
}


// Variables for Large Square
int lsXpos;
int lsYpos;
int lsXspd;
int lsYspd;
int lsXbnd = 100;
int lsYbnd = 100;

int maxXspd = 10;
int maxYspd = 0;

color lsColor = color(255, 50, 50);


// Helper Functions for  Large Square

void lsDraw(){
  fill(lsColor);
  rect(lsXpos, lsYpos, lsXbnd, lsYbnd);
}

void lsUpdate(){
  lsXpos += maxXspd;
  lsYpos += maxYspd;
  
  lsCheckBounds();
}

void lsCheckBounds(){
  
  // Checks x position boundaries
  if(lsXpos >= width){ println("Right edge detected"); lsXspd = -lsXspd; println(lsXspd);}
  if(lsXpos <= 0){ println("Left edge detected"); lsXspd = -lsXspd;}
  
  // Checks Y position boundaries
  if(lsYpos >= height){ println("Bottom edge detected"); lsYspd = -lsYspd; println(lsYspd);}
  if(lsYpos <= 0){ println("Top edge detected"); lsYspd = -lsYspd;}
}
// This is a function to set original position and speed of the square
void lsInitialize(){
  lsXpos = width/2;
  lsYpos = height/2;
  lsXspd = int( random(maxXspd) );
  lsYspd = int (random(maxYspd) ); 
}
