static int edgeSize = 600;

void setup(){
  size(600, 600);
}

void draw(){
  for ( int i = 0; i < 10; i++ ){
    circle(edgeSize/2, 12 + i*26, 20);
  }
}
