class Flowers
{
  int xPos;
  int yPos;
  float _radius;
  int numOfPentals;
  int farverR,farverB,farverG;
  float origoSize;
  int xSpeed;
  int ySpeed;
  
Flowers(int tempXpos, int tempYpos, float tempRadius, int tempNumOfPentals,int tempFarverR,int tempFarverB,int tempFarverG, float tempOrigo, int tempSpeed)
  {
    xPos = tempXpos;
    yPos = tempYpos;
    _radius = tempRadius;
    numOfPentals = tempNumOfPentals;
    farverR = tempFarverR;
    farverB = tempFarverB;
    farverG = tempFarverG;
    origoSize = tempOrigo;
    xSpeed = tempSpeed;
    ySpeed = tempSpeed;
  }
 
  
  void display()
  {
    for (float i=0;i<PI*2;i+=2*PI/numOfPentals) {
    fill(farverR,farverB,farverG);
  ballX=xPos + _radius*cos(i);
  ballY=yPos + _radius*sin(i);
  ellipse(ballX,ballY,_radius,_radius); 
  }
  fill(200,0,0);
  ellipse(xPos,yPos,_radius*origoSize,_radius*origoSize);
  }
  
  void move()
  {
    xPos +=xSpeed;
    yPos +=ySpeed;
  }
  
  void bounce()
  {
    if(xPos+_radius > width)
    {
      xSpeed =xSpeed*-1;
    }
    if(xPos <_radius)
    {
      xSpeed =xSpeed*-1;
    }
    if(yPos+_radius > height)
    {
      ySpeed =ySpeed*-1;
    }
    if(yPos <0+_radius)
    {
      ySpeed =ySpeed*-1;
    }
  }

}
  
