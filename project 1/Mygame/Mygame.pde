shark shark;
PImage bg;
ArrayList<food> foodList = new ArrayList<food>();
ArrayList<poison> poisonList = new ArrayList<poison>();

void setup() {
  size(960,720,P2D);
  bg = loadImage("sea.png");
  bg.resize(width,height);
  shark = new shark();
}
void draw() {
  background(bg);
  shark.draw();
}
