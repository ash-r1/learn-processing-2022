void setup(){
  size(600, 600);
}

void draw(){
  square(50, 250, 100);
  circle(300, 300, 100);
  eqTriangle(500, 250, 100);
}

void eqTriangle(int x, int y, int h){
  float edge = (float) Math.tan(radians(30)) * h;
  triangle(x, y, x-edge, y+h, x+edge, y+h);
}
