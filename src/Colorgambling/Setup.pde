// To be set by the user //

//Orientation of Source Image (LANDSCAPE or PORTRAIT)
final int orientation = LANDSCAPE;

//Dimensions in Portrait format
final int shapeWidthP = 200;
final int shapeHeightP = 600;

//Dimensions in Landscape format
final int shapeWidthL = 600;
final int shapeHeightL = 200;

//Cutout Settings
final int cutoutWidth = 200;
final int cutoutHeight = 300;

//-----------------------//

//Dimensions of sourcefile
int sourceWidth = 0;
int sourceHeight = 0;

void settings(){
  switch(orientation){
    case(LANDSCAPE):
      sourceWidth = 1200;
      sourceHeight = 600;
      break;
    case(PORTRAIT):
      sourceWidth = 600;
      sourceHeight = 1200;
      break;
  }
  
  fullScreen();
  //int x = 0;
  //int y = 0;
  
  //switch(orientation){
  //  case(PORTRAIT):
  //    x = 3 * shapeWidthP;
  //    y = 2 * shapeHeightP;
  //    break;
  //  case(LANDSCAPE):
  //    x = 2 * shapeWidthL;
  //    y = 3 * shapeHeightL;
  //    break;
  //}
  
}

void setup() {
  background(100);
  
  //Start source graphic creation process
  createSourceGraphic(#FFCE00, #0375B4, #007849, #262228, orientation);
  
  
  //Cutout Object initialisation
  Cutout cutout1 = new Cutout(100, 100);
  Cutout cutout2 = new Cutout(500, 100);
  Cutout cutout3 = new Cutout();
  Cutout cutout4 = new Cutout();
  Cutout cutout5 = new Cutout();
  Cutout cutout6 = new Cutout();
  Cutout cutout7 = new Cutout();
  cutout1.draw();
  cutout2.draw();
  Cutout cutouts[] = {cutout1, cutout2, cutout3, cutout4, cutout5, cutout6, cutout7};
}