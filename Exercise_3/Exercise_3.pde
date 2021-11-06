PImage bg;
float sdeg, mdeg, hdeg, sx, sy, mx, my, hx, hy;
int h, s, m , myHour;
long current_time;

void setup(){
  size(720,540, P2D);
  strokeWeight(2);
  bg = loadImage("rolex.png");
  bg.resize(600, 520);
  imageMode(CENTER);
  current_time = millis();
  s = second();
  m = minute();
  myHour = hour();
  
  if ( myHour > 12) {
    h = myHour - 12;
  } else {
    h = myHour;
    if (h == 0); {
      h = 12;
    }
  }
  
}

void draw(){  
  if(current_time+1000 < millis()) {
        background(173,216,230);
        image(bg,width/2, height/2);
         current_time = millis();
    
    //update
    s++;
    if (s > 59){
    s = 0;
    m++;
    if(m > 59){
      m = 0;
      h++;
      if(h > 12){
        h = 1;
      }
     }
    }
    
    sdeg = s * 6;
    mdeg = m * 6 + (sdeg*0.01666667);
    hdeg = h * 30 + (mdeg*0.0833333);
    
    sx = width/2 + 100 *cos(sdeg*(PI/180));
    sy = height/2 + 100*sin(sdeg*(PI/180));
    mx = width/2 + 100 *cos(mdeg*(PI/180));
    my = height/2 + 100*sin(mdeg*(PI/180));
    hx = 400 + 100 *cos(hdeg*(PI/180));
    hy = 400 + 100*sin(hdeg*(PI/180));
    
    fill(173,216,230);
    stroke(173,216,230);
    strokeWeight(3);
    line(width/2, height/2,sx,sy);
    line(width/2, height/2, mx,my);
    line(width/2, height/2, hx,hy);
  }
  println(h);
  println(m);
  println(s);
}
