int radius = 10;

void setup(){
  size(600, 600);
}

void draw(){
  radius += 1;
  circle(300, 300, radius);
}
