int radius = 10;
static int edgeSize = 600;
boolean expanding = true;

void setup(){
  size(600, 600);
}

void draw(){
  background(127);
  
  if ( expanding ) {
    radius += 1;
  } else {
    radius += -1;
  }
  if ( edgeSize < radius ) {
    expanding = false;
  }
  if( radius < 0 ){
    expanding = true;
  }
  circle(300, 300, radius);
}
