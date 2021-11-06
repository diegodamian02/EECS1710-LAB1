class invader{
  float aiX = 350;
  float aiY = 0;
  boolean moveDown = true;
  PImage invader;
  
  invader() {
    invader = loadImage("invader_green.png");
  }
  
 void draw() {
   imageMode(CENTER);
   image(invader,aiX,aiY);
   invader.resize(50,50);
   
  if (moveDown == true) {
    aiY = aiY + 4;
  }
  if (aiY <= 650) {
    moveDown = true;
  }
 }
  void update() {
  if (aiY > 650) {
    aiY = 0;
    aiX = random(30, 970);
    moveDown= true;
  }
 }
 
 void run() {
   update();
   draw();
 } 
}

  
    
