class Paddle{
  float x;
  float y = height/2;
  float w = 20;
  float h = 100;
  float yChange = 0;
  Paddle(boolean right){
    if(right){
      x = width - w;
    }
    else{
      x = w;
    }
   
  }
  void show(){
    fill(255);
    rectMode(CENTER);
    rect(x,y,w,h);
  }
  void update(){
    y += yChange;
    y = constrain(y,h/2,height-h/2);
  }
  void move(float steps){
    y += steps;
  }
  
}
