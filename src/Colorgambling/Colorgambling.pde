PImage img;

void setup(){
  size(1000, 800);
  
  img = loadImage("../../img/1.png");
}

void draw(){
  background(0);
  image(img, 0, 0);
}