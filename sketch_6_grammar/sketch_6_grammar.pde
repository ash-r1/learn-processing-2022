static int EDGE_SIZE = 600;
static int CIRCLE_SIZE = 20;
static int CIRCLE_MARGIN = 6;
static int CIRCLES_COUNT = 40;
int movingSpeed = 5;
int posX = 0;

void setup(){
  size(600, 600);
}

void draw(){
  background(127);
  moveCircles();
  for ( int i = 0; i < CIRCLES_COUNT; i++ ){
    drawCircle(i);
  }
}

color stepColor(int step) {
  if(step%3==0){
    return #ff0000;
  }else if(step%3==1){
    return #00ff00;
  }else{
    return #0000ff;
  }
}

void drawCircle(int idx) {
  fill(stepColor(idx));
  int y = (int)((idx+0.5)*(CIRCLE_SIZE + CIRCLE_MARGIN));
  circle(posX, y, CIRCLE_SIZE);
}

void moveCircles(){
  if(movingSpeed > 0){
    if(posX >= EDGE_SIZE - CIRCLE_SIZE){
      movingSpeed = -movingSpeed;
    }else{
      posX += movingSpeed;
    }
  }else{
    if(posX <= CIRCLE_SIZE){
      movingSpeed = -movingSpeed;
    }else{
      posX += movingSpeed;
    }
  }
}
