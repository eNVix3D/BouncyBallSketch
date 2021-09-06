//Nicklas 2i Bouncy Ball 06.09.2021

float ballSpeed = random(1,10);
float ballXspeed = ballSpeed;
float ballYspeed = ballSpeed;
float ballXpos = random(260,340);
float ballYpos = random(260,340);

float rectXsize = random(100,750);
float rectYsize = random(100,750);

float ballColorR = random(0,255);
float ballColorG = random(0,255);
float ballColorB = random(0,255);

float BGcolor = 0;
boolean BGendColor = false;
float BGspeed = random(1,5);

void setup(){
 size(1000,1000); 
 frameRate(60);
}

void draw(){
  clear();
  background(BGcolor);
  
  fill(60);
  rect(250,250,rectXsize,rectYsize);
  
  fill(ballColorR,ballColorG ,ballColorB);
  circle(ballXpos,ballYpos,20);
  

  ballXpos = ballXpos + ballXspeed;
  ballYpos = ballYpos + ballYspeed;
  
  //Change background color smoothly
  if(BGcolor >= 255){
  BGendColor = true;  
  }
  
  if(BGcolor <= 0){
   BGendColor = false;
  }
  
  if(!BGendColor){
   BGcolor += BGspeed;
  }
  
  if(BGendColor) {
   BGcolor -= BGspeed; 
  }
  
  
  if (ballXpos >= rectXsize + 250 || ballXpos <= 250) {
   ballXspeed = ballXspeed *= -1;
   //change ball color upon collision
   ballColorR = random(0,255);
   ballColorG = random(0,255);
   ballColorB = random(0,255);
  }
  
  if (ballYpos >= rectYsize + 250 || ballYpos <= 250) {
   ballYspeed = ballYspeed *-1; 
   //Change ball color upon collision
   ballColorR = random(0,255);
   ballColorG = random(0,255);
   ballColorB = random(0,255);
  }

}
