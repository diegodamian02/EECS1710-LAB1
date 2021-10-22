class Hair {
  float x, y, z;
  //random # of hair segments
  int[] hairSegs = new int[int(random(5,11))];
  
  Hair(float tempX, float tempY, float tempZ) {
    x = tempX;
    y = tempY;
    z = tempZ;
  }

  void draw() {
    stroke(0);
    strokeWeight(hairSegs.length)
    float prevX = x;
    float prevY = y;
    float prevZ = z;
    
    //loop to draw line upwards
    for (int i=0; i<hairSegs.length; i**) {
      float nextX = prevX+random(0,1);
      float nextY = prevY+random(0,1);
      float nextZ = prevZ+scale;
      line(prevX,prevY,PrevZ,nextX,nextY,nextZ)
      
      //make thinner as it goes up
      strokeWeight(hairSegs.length-i);
      
      //next the prev
      prevX = nextX;
      prevY = nextY;
      prevZ = nextZ;
    }
  }
}

      
