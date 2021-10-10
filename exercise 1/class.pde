class UserInterface {
  void draw() {
    fill(bgBlue);
    stroke(uiOutline);
    strokeWeight(2);
    rect(0,0,width,85);
    rect(0,(height-25),width,25);
    
    //bg
    fill (white);
    strokeWeight(0);
    rect(0,86,width,5);
    rect(806,91,(width-806),600);
    
    //text
    fill(0);
    text("900px x 500px",6, (height-8.5));
    text("Diego Damian :)", (width-90),(height-8.5));
  }
}

//btn

class ColorBtn {
  int posX;
  int posY;
  color btnColor;
  int btnWidth = 51;
  int btnHeight = 73;
  
  ColorBtn(int tempX, int tempY, color btnCol) {
    posX = tempX;
    posY = tempY;
    btnColor =btnCol;
  }
  void draw() {
    fill(btnColor);
    strokeWeight(2);
    rect(posX,posY,btnWidth,btnHeight);
  }
}

void mouseWheel(MouseEvent event) {
  if (brushWidth >=1 && brushWidth <25) {
    brushWidth += -(event.getCount());
  }
  if(brushWidth >= 25) {
    brushWidth += -(event.getCount()*2);
  }
  else if (brushWidth < 1) {
    brushWidth =1;
  }
}

    
    
