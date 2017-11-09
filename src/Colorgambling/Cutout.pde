class Cutout {
  private PImage image;
  private int x, y;
  
  Cutout(){
    this.x = 0;
    this.y = 0;
    this.generateImage();
  }
  
  Cutout(int x, int y){
    this.x = x;
    this.y = y;
    this.generateImage();
  }
  
  PImage getImage(){
    return this.image;
  }
  
  void draw(){
    image(this.image, x, y);
  }
  
  void move(){
    this.x++;
  }
  
  public void generateImage(){
    this.image = sourceGraphic.get(round(random(0, sourceWidth - cutoutWidth)), round(random(0, sourceHeight - cutoutHeight)), cutoutWidth, cutoutHeight);
  }
}