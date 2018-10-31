class Player
{
  int health;
  int speed;
  int xPos,yPos;
  int[] playerSize = new int[4]; // for player's head and body
  
  Player(int tempHealth, int tempSpeed, int tempXPos,int tempYPos, int tempPlayerBodySizeW,int tempPlayerBodySizeH, int tempPlayerHead,int tempPlayerHands)
  {
    health = tempHealth;
    speed  = tempSpeed;
    xPos = tempXPos;
    yPos = tempYPos;
    playerSize[0] = tempPlayerBodySizeW;// width of body
    playerSize[1] = tempPlayerBodySizeH;// height of body
    playerSize[2] = tempPlayerHead;//size of head
    playerSize[3] = tempPlayerHands;//size of hands
  }
  
  void display()
  {
    fill(#A5149E);
    rect(xPos,yPos,playerSize[0],playerSize[1]);//body
    fill(#FACA6F);
    ellipse(xPos+playerSize[0]/2,yPos+playerSize[1]/2,playerSize[2],playerSize[2]);//head
    ellipse(xPos+playerSize[0],yPos+playerSize[1]/2,playerSize[3],playerSize[3]);// right hand
    ellipse(xPos,yPos+playerSize[1]/2,playerSize[3],playerSize[3]);// right hand
    move();
  }
  
  void move()
  {
    if (keyPressed) 
    {
      if (key == CODED) 
      {
        if(keyCode == UP)
        {
          yPos =yPos -speed;
        }
        if(keyCode == RIGHT)
        {
          xPos =xPos +speed;
        }
        if(keyCode == DOWN)
        {
          yPos =yPos +speed;
        }
        if(keyCode == LEFT)
        {
          xPos =xPos -speed;
        }
      }
    }
  }  
}
