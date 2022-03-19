final int CIRCLES_COUNT = 100;


Circle[] circles = new Circle[CIRCLES_COUNT];

void setup() {
  size(600, 600);
  noStroke();
  for( int i = 0; i < circles.length; i++){
    circles[i] = new Circle();
  }
}


void draw() {
  background(255);
  for( int i = 0; i < circles.length; i++){
    circles[i].update();
  }
  for( int i = 0; i < circles.length; i++){
    circles[i].draw();
  }
}

color randomColor() {
  return color(random(127,230), random(127,230), random(230,255));
}

class Circle {
  // 色
  final color fillColor;
  // 直径
  final int diameter;
  
  // x軸位置
  float x;
  // y軸位置
  float y;
  
  Circle(){
    this.fillColor = randomColor();
    this.diameter = (int)(random(10, 50));
    
    float offset = this.diameter/2;
    this.x = random(-offset, width + offset);
    this.y = random(-offset, height + offset);
  }
  
  void update(){
    this.x += random(-5, 5);
    this.y += random(-5, 5);
  }
  
  void draw(){
    fill(this.fillColor);
    circle(this.x, this.y, this.diameter);
  }
}
