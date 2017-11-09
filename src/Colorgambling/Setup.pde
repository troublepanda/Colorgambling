// To be set by the user //

//Orientation of Source Image (LANDSCAPE or PORTRAIT)
final int orientation = PORTRAIT;

//Dimensions of sourcefile

//Dimensions in Portrait format
final int shapeWidthP = 200;
final int shapeHeightP = 600;

//Dimensions in Landscape format
final int shapeWidthL = 600;
final int shapeHeightL = 200;

//-----------------------//

void settings(){
  int x = 0;
  int y = 0;
  
  switch(orientation){
    case(PORTRAIT):
      x = 3 * shapeWidthP;
      y = 2 * shapeHeightP;
      break;
    case(LANDSCAPE):
      x = 2 * shapeWidthL;
      y = 3 * shapeHeightL;
      break;
  }     
  
  size(x, y);
}

void setup() {
  background(100);
  
  //Start source graphic creation process
  createSourceGraphic(#FFCE00, #0375B4, #007849, #262228, orientation);

  // img = rect1.get(0, 0, 100, 100);
}