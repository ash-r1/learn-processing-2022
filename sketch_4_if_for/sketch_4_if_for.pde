static int edgeSize = 600;

void setup(){
  size(600, 600);
}

void draw(){
  background(127);
  for ( int i = 0; i < 10; i++ ){
    if(i%3==0){
      fill(256, 0, 0);
    }else if(i%3==1){
      fill(0, 256, 0);
    }else{
      fill(0, 0, 256);
    }
    circle(edgeSize/2, 12 + i*26, 20);
  }
}
