//Global Objects

PGraphics sourceGraphic;

//Functions

void createSourceGraphic(color color1, color color2, color color3, color color4, int orientation) {
  switch(orientation) {
  case LANDSCAPE:

    //Initialize the canvas
    sourceGraphic = createGraphics(sourceWidth, sourceHeight);
    sourceGraphic.beginDraw();
    sourceGraphic.background(#FFFFFF);
    sourceGraphic.noStroke();

    // Shape 1
    sourceGraphic.fill(color1);
    sourceGraphic.rect(round(0.5 * shapeWidthL), 0, shapeWidthL, shapeHeightL);

    //Shape 2
    sourceGraphic.fill(color2);
    sourceGraphic.rect(0, round(sourceHeight / 3), shapeWidthL, shapeHeightL);

    //Shape 3
    sourceGraphic.fill(color3);
    sourceGraphic.rect(round(sourceWidth / 2), round(sourceHeight / 3), shapeWidthL, shapeHeightL);

    //Shape 4
    sourceGraphic.fill(color4);
    sourceGraphic.rect(round(0.5 * shapeWidthL), 2 * round(sourceHeight / 3), shapeWidthL, shapeHeightL);

    //Finishing drawing process
    sourceGraphic.endDraw();
    break;

  case PORTRAIT:

    //Initialize the canvas
    sourceGraphic = createGraphics(sourceWidth, sourceHeight);
    sourceGraphic.beginDraw();
    sourceGraphic.background(#FFFFFF);
    sourceGraphic.noStroke();

    // Shape 1
    sourceGraphic.fill(color1);
    sourceGraphic.rect(round(sourceWidth / 3), 0, shapeWidthP, shapeHeightP);

    //Shape 2
    sourceGraphic.fill(color2);
    sourceGraphic.rect(0, round(0.5 * shapeHeightP), shapeWidthP, shapeHeightP);

    //Shape 3
    sourceGraphic.fill(color3);
    sourceGraphic.rect((2 * shapeWidthP), round(0.5 * shapeHeightP), shapeWidthP, shapeHeightP);

    //Shape 4
    sourceGraphic.fill(color4);
    sourceGraphic.rect(round(sourceWidth / 3), round(0.5 * sourceHeight), shapeWidthP, shapeHeightP);

    //Finishing drawing process
    sourceGraphic.endDraw();

    break;
  }
}