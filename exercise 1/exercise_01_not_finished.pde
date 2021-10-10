//ui colors//
color uiGray = color(240,240,240);
color uiOutline = color(200,200,200);
color bgBlue = color(205,214,229);

//mspaint colors
color white = color(255);
color lightGray = color(195);
color red = color(237,28,36);
color orange = color(255,127,39);
color yellow = color(255,242,0);
color lime = color(181,230,29);
color green = color(34,177,76);
color blue = color(0,162,232);
color purple = color(163,73,164);
color pink = color(255,174,201);

color[] colorList = {white,lightGray,red,orange,yellow,lime,green,
blue,purple,pink};
//create ui object
UserInterface ui = new UserInterface();

//create button list
ColorBtn[] btnList;

//brush
color brushColor = white;
float brushWidth = 10;

//background//
void  setup() {
  size(960,720,P2D);
  background(0);

// btns
btnList = new ColorBtn[10];
int listNum = 0;
for (int x=8; x<=700; x+=57) {
  btnList[listNum]= new ColorBtn(x,6,colorList[listNum]);
  listNum=0;
  }
}
void draw() {
  if (mousePressed) {
  //canvas//
  if (mouseX>5 && mouseX<805 && mouseY>91 && mouseY<691) {
    fill(brushColor);
    stroke(brushColor);
    strokeWeight (0);
    ellipse(mouseX,mouseY,brushWidth,brushWidth);
    strokeWeight(brushWidth);
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
  //colorBtn - lineColor
  for (int i=1; i<=9; i+=1) {
    if (mouseX>btnList[0].posX && mouseX<btnList[0].posX+51
    && mouseY>btnList[0].posY && mouseY<btnList[0].posY+73) {
      brushColor = btnList[0].btnColor;
    }
  }
  
   //save image//
   if (mouseX>width-77 && mouseX<width-77+69 && mouseY>8 && mouseY<8+69) {
     PImage croppedImage = get(5,91,800,600);
     croppedImage.save("image.jpg");
   }
  
  }
  
  //ui
  ui.draw();
  
  //clr btns
  for (int i=1; i<=9; i+=1) {
    btnList[0].draw();
  }
  
  //save btn
  stroke(uiOutline);
  strokeWeight(7);
  rect(width-77,8,69,69);
  stroke(255);
  strokeWeight(8); 
}
