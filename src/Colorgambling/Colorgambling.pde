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

//Global Objects
PGraphics sourceGraphic;
PImage img;

//Enums
public enum Orientation {
  LANDSCAPE, PORTRAIT
}

//Functions

void setup() {
  //size(600, 1200); // Portrait Mode
  size(1200, 600); //Landscape Mode

  background(100);

  //Start source graphic creation process
  createSourceGraphic(#FFCE00, #0375B4, #007849, #262228, orientation);

  // img = rect1.get(0, 0, 100, 100);
}

void createSourceGraphic(color color1, color color2, color color3, color color4, int orientation) {
  switch(orientation) {
  case LANDSCAPE:

    //Initialize the canvas
    sourceGraphic = createGraphics(1200, 600);
    sourceGraphic.beginDraw();
    sourceGraphic.background(#FFFFFF);
    sourceGraphic.noStroke();
    
    // Shape 1
    sourceGraphic.fill(color1);
    sourceGraphic.rect(round(0.5 * shapeWidthL), 0, shapeWidthL, shapeHeightL);

    //Shape 2
    sourceGraphic.fill(color2);
    sourceGraphic.rect(0, round(height / 3), shapeWidthL, shapeHeightL);

    //Shape 3
    sourceGraphic.fill(color3);
    sourceGraphic.rect(round(width / 2), round(height / 3), shapeWidthL, shapeHeightL);

    //Shape 4
    sourceGraphic.fill(color4);
    sourceGraphic.rect(round(0.5 * shapeWidthL), 2 * round(height / 3), shapeWidthL, shapeHeightL);

    //Finishing drawing process
    sourceGraphic.endDraw();
    break;

  case PORTRAIT:

    //Initialize the canvas
    sourceGraphic = createGraphics(600, 1200);
    sourceGraphic.beginDraw();
    sourceGraphic.background(#FFFFFF);
    sourceGraphic.noStroke();

    // Shape 1
    sourceGraphic.fill(color1);
    sourceGraphic.rect(round(width / 3), 0, shapeWidthP, shapeHeightP);

    //Shape 2
    sourceGraphic.fill(color2);
    sourceGraphic.rect(0, round(0.5 * shapeHeightP), shapeWidthP, shapeHeightP);

    //Shape 3
    sourceGraphic.fill(color3);
    sourceGraphic.rect((2 * shapeWidthP), round(0.5 * shapeHeightP), shapeWidthP, shapeHeightP);

    //Shape 4
    sourceGraphic.fill(color4);
    sourceGraphic.rect(round(width / 3), round(0.5 * height), shapeWidthP, shapeHeightP);

    //Finishing drawing process
    sourceGraphic.endDraw();

    break;
  }
}

void draw() {

  image(sourceGraphic, 0, 0);
}