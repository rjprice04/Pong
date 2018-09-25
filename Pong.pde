Ball gameBall;
Paddle leftPaddle;
Paddle rightPaddle;
int leftScore;
int rightScore;
void setup(){

  size(600,400);

  gameBall = new Ball();
  rightPaddle = new Paddle(true);
  leftPaddle = new Paddle(false);


}

void draw(){
  background(0);
  
  gameBall.checkPaddleRight(rightPaddle);
  gameBall.checkPaddleLeft(leftPaddle);
  
  leftPaddle.show();
  rightPaddle.show();
  leftPaddle.update();
  rightPaddle.update();
  
  gameBall.update();
  gameBall.edges();
  gameBall.show();
  
  fill(255);
  textSize(32);
  text(leftScore,32,40);
  text(rightScore, width-64,40);
 
}

void keyPressed(){
  if(key == 'a'){
    leftPaddle.move(-10);
  }
  else if(key == 'z'){
    leftPaddle.move(10);
  }
  
  if(key == 'j'){
    rightPaddle.move(-10);
  }
  else if(key == 'm'){
    rightPaddle.move(10);
  }
}
void keyReleased(){
  leftPaddle.move(0);
  rightPaddle.move(0);
}
