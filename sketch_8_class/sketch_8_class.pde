class Circle {
  color myColor;
  int mySize;
  
  Circle(color cl, int s){
    myColor = cl;
    mySize = s;
  }
  
  void drawAt(int x, int y){
    fill(this.myColor);
    circle(x, y, this.mySize);
  }
}

Circle circle1 = new Circle(#ff0000, 20);
Circle circle2 = new Circle(#00ff00, 20);
Circle circle3 = new Circle(#0000ff, 20);

void setup() {
  size(600,600);
}


void draw() {
  background(128);
  circle1.drawAt(200, 300);
  circle2.drawAt(300, 300);
  circle3.drawAt(400, 300);
}
