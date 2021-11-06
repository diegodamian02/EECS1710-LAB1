ship ship;
invader invader;
lazer lazer;
PImage bg;
int countA = 0;
PFont font;
float gravity = 0.4;
float gravityDelta = 0.01;
float friction = 0.99;
float floor;

void setup() {
  size(1000,600,P2D);
  floor = height;
  bg = loadImage("space.jpeg");
  bg.resize(width,height);
  font = loadFont("InaiMathi-Bold-24.vlw");
  ship = new ship();
  invader = new invader();
  lazer = new lazer();
  
}

void draw(){
  background(bg);
  ship.run();
  invader.run();
  textFont(font);
  text("score", 350, 50);
  text(countA, 310, 50);
  lazer.run();
  }
  
