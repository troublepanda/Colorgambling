// To be set by the user //

//Orientation of Source Image (LANDSCAPE or PORTRAIT)
//Uncomment the corresponding size() call inside the setup() call
final int orientation = LANDSCAPE;

//Dimensions in Portrait format
final int shapeWidthP = 200;
final int shapeHeightP = 600;

//Dimensions in Landscape format
final int shapeWidthL = 600;
final int shapeHeightL = 200;

//-----------------------//

void setup() {
  //size(600, 1200); // Portrait Mode
  size(1200, 600); //Landscape Mode

  background(100);
  //Start source graphic creation process
  createSourceGraphic(#FFCE00, #0375B4, #007849, #262228, orientation);

  // img = rect1.get(0, 0, 100, 100);
}