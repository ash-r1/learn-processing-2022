final int CIRCLES_COUNT = 100;
final int SQUARES_COUNT = 100;

Shape[] shapes = new Shape[CIRCLES_COUNT+SQUARES_COUNT];

void setup() {
  size(600, 600);
  noStroke();
  for( int i = 0; i < shapes.length; i++){
    if( i < CIRCLES_COUNT ){
      shapes[i] = new Circle();
    }else{
      shapes[i] = new Square();
    }
  }
}


void draw() {
  background(255);
  for( int i = 0; i < shapes.length; i++){
    shapes[i].update();
  }
  for( int i = 0; i < shapes.length; i++){
    shapes[i].draw();
  }
}


color randomColor() {
  return color(random(127,230), random(127,230), random(230,255));
}

interface Shape {
  void update();
  void draw();
}

class Circle implements Shape {
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

class Square implements Shape {
  // 色
  final color fillColor;
  // 辺の長さ
  final int edgeSize;
  
  // sin関数の偏差
  final float deviation;
  // y軸を指定するsin関数の周波数
  final float freq;
  // x軸移動速度
  final float xMoveSpeed;
  
  // x軸位置
  float x = 0;
  
  Square(){
    this.fillColor = randomColor();
    this.edgeSize = (int)(random(10, 50));
    this.deviation = random(0, 2*PI);
    
    float offset = this.edgeSize/2;
    this.x = random(-offset, width + offset);
    this.xMoveSpeed = random(0.2, 2.0);
    // 
    this.freq = random(1, 10  / this.xMoveSpeed);
    this.update();
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    float sinval = sin(this.freq * this.x / (width + this.edgeSize) * PI + this.deviation);
    return (sinval/2 + 0.5) * (height + this.edgeSize) - this.edgeSize/2;
  }
  
  void update(){
    this.x += this.xMoveSpeed;
    float offset = this.edgeSize/2;
    if( this.x > width + offset ){
      this.x = -offset;
    }
  }
  
  void draw(){
    fill(this.fillColor);
    square(this.x + edgeSize/2, this.getY() + edgeSize/2, this.edgeSize );
  }
}
