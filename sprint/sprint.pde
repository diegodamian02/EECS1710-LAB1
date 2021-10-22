int cols, rows;
int scale = 20;

//movement
float velX = 0;
float velY = 0;
float moveSpeed;
float run = 0.05;
boolean isUp, isDOwn, isLeft, isRight, isFast, isTurn;

//2d z values
float[][] terrain;
//hair objects
Hair[][] hairArray;

void setup() {
  size(960, 720, P3D);
  //# of cols & rows
  cols = 100;
  rows = 100;
  
  //creat empty float vars
  terrain = new float[cols][rows];
  hairArray = new Hair[cols][rows];
}
void draw() {
  background (242, 239, 189);
  //text
  fill(64,32,0);
  textSize(15);
  textAlign(CENTER);
  text("cntrls: WASD, + Shitf to ruuun", width/2,20);
  
  //skin color
  stroke(242, 236, 206);
  fill(164, 165, 166);
  
  //cntrls
  if (isFast == false)moveSpeed = walk;
  if (isFast)moveSpeed = run;
  if (isUp)velY -= moveSpeed;
  if (isDown)velY += moveSpeed;
  if (isLeft)velX -= moveSpeed;
  if (isright)velX += moveSpeed;
   
   //
