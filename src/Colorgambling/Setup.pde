// To be set by the user //

//Orientation of Source Image (LANDSCAPE or PORTRAIT)

final int orientation = LANDSCAPE;
//-----------------------//
//Dimensions in Portrait format

final int sourceWidthP = 600;
final int sourceHeightP = 1200;
//-----------------------//
//Dimensions in Landscape format

final int sourceWidthL = 2400;
final int sourceHeightL = 1200;
//-----------------------//
//Cutout Settings

final int cutoutWidth = 200;
final int cutoutHeight = 300;

//#######################//
//DO NOT CHANGE
//Landscape dimensions
final int shapeWidthL = round(sourceWidthL / 2);
final int shapeHeightL = round(sourceHeightL / 3);
//Portrait dimensions
final int shapeWidthP = round(sourceWidthP / 3);
final int shapeHeightP = round(sourceHeightP / 2);

int sourceWidth = 0;
int sourceHeight = 0;
//#######################//

void settings(){
  switch(orientation){
    case(LANDSCAPE):
      sourceWidth = sourceWidthL;
      sourceHeight = sourceHeightL;
      break;
    case(PORTRAIT):
      sourceWidth = sourceWidthP;
      sourceHeight = sourceHeightP;
      break;
  }
  fullScreen();  
}

void setup() {
  background(180);
  
  //Start source graphic creation process
  createSourceGraphic(#FFCE00, #0375B4, #007849, #262228, orientation);
  
  //Cutout Object initialisation
  Cutout cutout1 = new Cutout(100, 100);
  //Cutout cutouts[] = {cutout1, cutout2, cutout3, cutout4, cutout5, cutout6, cutout7};
}