class ship {
  PImage ship;
  float sX = 500;
  float sY = 480;
  float xspeed = 5;
  boolean armRecoil = false;
  float recoilAmount = 4;
  
  
  ship() {
    ship = loadImage("ship.png");
  }

  void draw() {
  imageMode(CENTER);
  image(ship,sX,sY);
  ship.resize(120,100);
  }
  void update() {
  sX = sX + xspeed;
  }
  void checkEdges() {
  if (sX > width || sX < 0) {
    xspeed = xspeed * -1;
    }
  }

  void correct() {
    if( sX >=width){
      sX = width;
    }
    if( sY >= height){
       sY = height;
    }
    if(sY <=0){
      sY = 0;
    }
  }
  
  void run() {
    update();
    checkEdges();
    draw();
    correct();
  }
}
