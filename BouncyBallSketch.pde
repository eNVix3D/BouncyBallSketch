float ballSpeed = 5;
float ballXspeed = ballSpeed;
float ballYspeed = ballSpeed;
float ballXpos = 200;
float ballYpos = 300;

void setup(){
 size(750,750); 
 frameRate(60);
}

void draw(){
  clear();
  circle(ballXpos,ballYpos,20);
  
  ballXpos = ballXpos + ballXspeed;
  ballYpos = ballYpos + ballYspeed;
  
  if (ballXpos == 750 || ballXpos == 0) {
    ballXspeed = ballXspeed *= -1;
  }
  if (ballYpos == 750 || ballYpos == 0) {
   ballYspeed = ballYspeed *-1; 
  }

}
