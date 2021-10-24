class Tree {
  float x, y, z;
  //random # of hair segments
  int[] treeSegs = new int[int(random(5,11))];
  //make array of trees with coords
  float[][] treesCoords = new float[treeSegs][];
  
  
  Tree(float tempX, float tempY, float tempZ) {
    x = tempX;
    y = tempY;
    z = tempZ;
    
    float nextX = x;
    float nextY = y;
    float nextZ = z;
    for (int i=0; i<treeSegs; i++) {
      treeCoords[i] = new float []{nextX,nextY,nextZ};
      // next set of coords
      nextX+=random(0,4);
      nextY+=random(0,4);
      nextZ+=scale/2;
    }
  }

  void draw() {
    stroke(0);
    float tempWeight = 20;
    strokeWeight(treeSegs.length);
    
    //use loop to draw line upwards
    for (int i=0; i<hairSegs-1; i++){
        line(treeCoords[i][0],treeCoords[i][1],treeCoords[i][2],
        treeCoords[i+1][0],hairCoords[i+1][1],hairCoords[i+1][2]);
        
        tempWeight-=tempWeight/(treeSegs-1);
        tempWeight*=.9;
        strokeWeight(tempWeight);
    }
  }
        
        
  
  void move() {
    for (int i=0; i<treeCoords.length; i++) {
      if (isUp) treeCoords [i][1]+=moveSpreed;
      if (isDown) treeCoords [i][1]-=moveSpreed;
      if (isRight) treeCoords [i][0]-=moveSpreed;
      if (isLeft) treeCoords [i][0]+=moveSpreed;
    }
  }
}
