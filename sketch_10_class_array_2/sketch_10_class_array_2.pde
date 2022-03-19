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
  // sin関数の偏差
  final float deviation;
  // y軸を指定するsin関数の周波数
  final float freq;
  // x軸移動速度
  final float xMoveSpeed;
  
  // x軸位置
  float x = 0;
  
  Circle(){
    this.fillColor = randomColor();
    this.diameter = (int)(random(10, 50));
    this.deviation = random(0, 2*PI);
    
    float offset = this.diameter/2;
    this.x = random(-offset, width + offset);
    this.xMoveSpeed = random(0.2, 2.0);
    // 
    this.freq = random(1, 10  / this.xMoveSpeed);
    this.update();
  }
  
  float getY(){
    float sinval = sin(this.freq * this.x / (width + this.diameter) * PI + this.deviation);
    return (sinval/2 + 0.5) * (height + this.diameter) - this.diameter/2;    
  }
  
  void update(){
    this.x += this.xMoveSpeed;
    float offset = this.diameter/2;
    if( this.x > width + offset ){
      this.x = -offset;
    }
  }
  
  void draw(){
    fill(this.fillColor);
    circle(this.x, this.getY(), this.diameter);
  }
}
