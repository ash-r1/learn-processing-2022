static int edgeSize = 600;
int radius = 10;

void setup(){
  size(edgeSize, edgeSize);
}

void draw(){
  radius += 1;
  circle(300, 300, radius);
}
