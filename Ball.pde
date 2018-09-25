class Ball{
  float x = width/2;
  float y = height/2;
  float xSpeed;
  float ySpeed;
  float r = 12;
  
  public Ball(){
    reset();
    
  }
  void checkPaddleRight(Paddle p){
    if(y - r < p.y + p.h/2 && y + r > p.y - p.h/2 && x + r > p.x - p.w/2){
      if(x < p.x){
        float diff = y - (p.y - p.h/2);
        float angle = map(diff,0,p.h,radians(255),radians(135));
        xSpeed = 4 * cos(angle);
        ySpeed = 4 * sin(angle);
        x = p.x - p.w/2 - r;

      }
    }
  }
  void checkPaddleLeft(Paddle p){
    if(y - r < p.y + p.h/2 && y + r > p.y - p.h/2 && x - r < p.x + p.w/2){
      if(x >= p.x){
        float diff = y -(p.y - p.h/2);
        float rad = radians(45);
        float angle = map(diff,0,p.h,-rad,rad);
        xSpeed = 4 * cos(angle);
        ySpeed = 4 * sin(angle);
        x = p.x + p.w/2 + r;
        //xSpeed *= -1;
      }
    }
    
  }
  
  void update(){
    x = x + xSpeed;
    y = y + ySpeed;
  }
  void show(){
    fill(255);
    ellipse(x,y,r*2,r*2);
  }
  void edges(){
    if(y < 0 || y > height){
      ySpeed *= -1;
    }
    if(x - r > width){
      leftScore++;
      reset();
    }
    
    if(x + r < 0){
      rightScore++;
      reset();
    }
  }
  
  void reset(){
    x = width/2;
    y = height/2;
    float angle = random(-PI/4,PI/4);
    xSpeed = 4*cos(angle);
    ySpeed = 4*sin(angle);
    if(random(1) <.05){
       xSpeed *= -1;
    }
    
  }
}
