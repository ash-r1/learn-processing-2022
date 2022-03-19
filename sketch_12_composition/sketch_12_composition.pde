final int CIRCLES_COUNT = 50;
final int SQUARES_COUNT = 50;
final int TRIANGLES_COUNT = 50;

Shape[] shapes = new Shape[CIRCLES_COUNT+SQUARES_COUNT+TRIANGLES_COUNT];

void setup() {
  size(600, 600);
  noStroke();
  for( int i = 0; i < shapes.length; i++){
    if( i < CIRCLES_COUNT ){
      shapes[i] = new Circle();
    }else if( i < CIRCLES_COUNT+SQUARES_COUNT ){
      shapes[i] = new Square();
    }else{
      shapes[i] = new Triangle();
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

class FloatingMove {
  // sin関数の偏差
  final float deviation;
  // y軸を指定するsin関数の周波数
  final float freq;
  // x軸移動速度
  final float xMoveSpeed;
  // x,y の埋まる位置
  final float offset;
  
  // x軸位置
  float x = 0;
  
  FloatingMove(float offset){
    this.offset = offset;
    this.deviation = random(0, 2*PI);
    
    this.x = random(-this.offset, width + this.offset);
    this.xMoveSpeed = random(0.2, 2.0);
    // 
    this.freq = random(1, 10  / this.xMoveSpeed);
    this.update();
  }
  
  float getY(){
    float sinval = sin(this.freq * this.x / (width + this.offset * 2) * PI + this.deviation);
    return (sinval/2 + 0.5) * (height + this.offset*2) - this.offset;    
  }
  
  void update(){
    this.x += this.xMoveSpeed;
    if( this.x > width + this.offset ){
      this.x = -this.offset;
    }
  }
}

class Circle implements Shape {
  // 色
  final color fillColor;
  // 直径
  final int diameter;
  // 動き
  final FloatingMove move;
  
  Circle(){
    this.fillColor = randomColor();
    this.diameter = (int)(random(10, 50));
    this.move = new FloatingMove(this.diameter/2);
    move.update();
  }
  
  void update(){
    move.update();
  }
  
  void draw(){
    fill(this.fillColor);
    circle(this.move.x, this.move.getY(), this.diameter);
  }
}

class Square implements Shape {
  // 色
  final color fillColor;
  // 辺の長さ
  final int edgeSize;
  // 動き
  final FloatingMove move;
  
  Square(){
    this.fillColor = randomColor();
    this.edgeSize = (int)(random(10, 50));
    this.move = new FloatingMove(this.edgeSize/2);
    this.move.update();
  }
  
  void update(){
    this.move.update();
  }
  
  void draw(){
    fill(this.fillColor);
    square(this.move.x - edgeSize/2, this.move.getY() - edgeSize/2, this.edgeSize );
  }
}

class Triangle implements Shape {
  // 色
  final color fillColor;
  // 辺の長さ
  final int edgeSize;
  // 動き
  final FloatingMove move;
  
  Triangle(){
    this.fillColor = randomColor();
    this.edgeSize = (int)(random(10, 50));
    this.move = new FloatingMove(this.edgeSize/2);
    this.move.update();
  }
  
  void update(){
    this.move.update();
  }
  
  void draw(){
    fill(this.fillColor);
    float x = this.move.x;
    float y = this.move.getY();
    float h = this.edgeSize;
    float edge = (float) Math.tan(radians(30)) * h;
    triangle(x, y, x-edge, y+h, x+edge, y+h);
  }
}
