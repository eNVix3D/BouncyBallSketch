//Nicklas 2i Bouncy Ball 06.09.2021

float ballSpeed = random(1,10);
float ballXspeed = ballSpeed;
float ballYspeed = ballSpeed;
float ballXpos = random(360,500);
float ballYpos = random(360,500);

float rectXsize = random(100,750);
float rectYsize = random(100,750);

void setup(){
 size(1000,1000); 
 frameRate(60);
}

void draw(){
  clear();
  background(50);
  
  fill(60);
  rect(250,250,rectXsize,rectYsize);
  
  fill(255);
  circle(ballXpos,ballYpos,20);
  
  ballXpos = ballXpos + ballXspeed;
  ballYpos = ballYpos + ballYspeed;
  
  
  
  if (ballXpos >= rectXsize + 250 || ballXpos <= 250) {
    ballXspeed = ballXspeed *= -1;
  }
  if (ballYpos >= rectYsize + 250 || ballYpos <= 250) {
   ballYspeed = ballYspeed *-1; 
  }

}
