static int EDGE_SIZE = 600;
static int CIRCLE_SIZE = 20;
static int CIRCLE_MARGIN = 6;
static int CIRCLES_COUNT = 40;

int[] posXArray;
int[] movingSpeedArray;

void setup(){
  size(600, 600);
  posXArray = new int[CIRCLES_COUNT];
  movingSpeedArray = new int[CIRCLES_COUNT];
  for ( int i = 0; i < CIRCLES_COUNT; i++ ){
    movingSpeedArray[i] = int(random(1, 20));
  }
}

void draw(){
  background(127);
  for ( int i = 0; i < CIRCLES_COUNT; i++ ){
    moveCircle(i);
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
  circle(posXArray[idx], y, CIRCLE_SIZE);
}

void moveCircle(int idx){
  if(movingSpeedArray[idx] > 0){
    if(posXArray[idx] >= EDGE_SIZE - CIRCLE_SIZE){
      movingSpeedArray[idx] = -movingSpeedArray[idx];
    }else{
      posXArray[idx] += movingSpeedArray[idx];
    }
  }else{
    if(posXArray[idx] <= CIRCLE_SIZE){
      movingSpeedArray[idx] = -movingSpeedArray[idx];
    }else{
      posXArray[idx] += movingSpeedArray[idx];
    }
  }
}
