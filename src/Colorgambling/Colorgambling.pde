//Global Objects
Cutout cutout1;

//Enums
public enum Orientation {
  LANDSCAPE, PORTRAIT
}

//Functions
void draw() {
  moveCutouts();
  //image(sourceGraphic, 0, 0);
  int fixedWidth = 600;
  PImage img = cutout1.getImage();
  img.resize(fixedWidth, 0);
  image(img, width / 2 - 0.5 * fixedWidth, height / 2 - 0.5 * (1.6 * fixedWidth));
}

void moveCutouts(){
  background(180);
  cutout1.generateImage();
}