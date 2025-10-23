/*

This example shows how to write a for loop, using the built-in for() function.
This example also shows how to write a custom FOR loop, using multiple conditions.

Look how much longer and complicated the bespoke FOR loop is!

*/

int i = 0; // declare & define an integer variable

void setup(){
     // This runs once at the start
    size( 500, 500);
}

void draw(){
   //int value = 5;
   //for(int i = 0; i < value; i++){
   //  // do something
   //  print("this is the value of i: ");
   //  println(i);
   //} // end of for loop
    FOR(0, 5, 1); 
 } // end of draw
     
void FOR(int I, int val, int increment){
  if(i == frameCount){ // this is to check if the frame is 0
    i = i + increment;
  }
  int value = val;
  if (i < value){
    // do something
     print("this is the value of i: ");
     println(i);
    i = i + increment;
  }
  if(i == value){
   i = I;
  }
}





/*
 void setup(){
   int value = 5;
   for(int i = 0; i < value; i++){
     // do something
   } // end of for loop
 } // end of setup

*/
