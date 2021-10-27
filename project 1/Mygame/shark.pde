class shark{
  PImage shark, dead;
  PVector center;
  float posX;
  float posY;
  
  
  
  shark() {
    posX = random(40,400);
    posY = random(40,400);
    shark = loadImage("shark.png");
    dead = loadImage("death.png");
  
  }
  void draw() {
    imageMode(CENTER);
    image(shark,mouseX,mouseY);
    shark.resize(350,350);
  }
  
  //out of bounds
  void correct() {
    if(posX >=width){
      posX = width;
    }
    if(posY >= height){
      posY = height;
    }
    if(posY <=0){
      posY = 0;
    }
  }  
}

   
