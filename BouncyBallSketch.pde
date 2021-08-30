//Nicklas 2i Bouncy Ball 30.08.2021

float ballSpeed = 5;
float ballXspeed = ballSpeed;
float ballYspeed = ballSpeed;
float ballXpos = 500;
float ballYpos = 400;

void setup(){
 size(1000,1000); 
 frameRate(60);
}

void draw(){
  clear();
  background(50);
  
  fill(60);
  rect(250,250,500,500);
  
  fill(255);
  circle(ballXpos,ballYpos,20);
  
  ballXpos = ballXpos + ballXspeed;
  ballYpos = ballYpos + ballYspeed;
  
  if (ballXpos == 750 || ballXpos == 250) {
    ballXspeed = ballXspeed *= -1;
  }
  if (ballYpos == 750 || ballYpos == 250) {
   ballYspeed = ballYspeed *-1; 
  }

}
