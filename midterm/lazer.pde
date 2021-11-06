class lazer extends ship {
  float lzX = 500;
  float lzY = 480;
  PImage lazer;
  boolean moveUp = false;
  float lzXspeed = 5;
  
  lazer() {
    lazer = loadImage("fire.png");
  }
  
  void draw() {
    imageMode(CENTER);
    image(lazer,lzX,lzY);
    lazer.resize(25,25);
    
    if (keyPressed && key == ' ') {
      moveUp = true;
    }
    if (moveUp == true) {
      lzY = lzY - 10;
    }
    
    if(lzY < 10) {
      lzY = 480;
      moveUp = false;
    }
  }
  void update() {
  lzX = sX + 5;
  }

void run() {
  update();
  draw();
  }
}
