int cols, rows;
int scale = 20;

//movement
float flyingX= 0;
float flyingY = 0;
float moveSpeed = 0.01;

//2d - z values
float [][] terrain;

void setup() {
  size(960,720,P3D);
  cols = width/scale;
  rows = height/scale;
  terrain = new float[cols][rows];
  
}

void draw() {
  background (106,90,205);
  stroke (0);
  fill(173,216,230);
  
  //WASD
  if (keyPressed) {
    if (key == 'w') {
      flyingY -=moveSpeed;
    }
    else if (key == 's') {
      flyingY += moveSpeed;
    }
    if (key == 'a') {
      flyingX -= moveSpeed;
    }
    else if (key =='d') {
      flyingX += moveSpeed;
    }
  }
  
  //create z values - loop
  
  float yOffset = flyingY;
  for (int y = 0; y < rows; y++) {
    float xOffset = flyingX;
    for (int x = 0; x < cols; x++) {
      terrain[x][y] = map(noise(xOffset,yOffset),0,1,-100,100);
      xOffset +=.1;
    }
    yOffset += .1;
  }
  
  //rotate and translate grid
  translate(width/2,height/2);
  rotateX(PI/3);
  translate(-width/2,-height/2);
  
  //draw grid
  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      //triangle_strips zig zag
      
     vertex(x*scale,y*scale,terrain[x][y]);
     vertex(x*scale,(y+1)*scale,terrain[x][y+1]);
     
    }
    endShape();
  }
}

  
    




  
