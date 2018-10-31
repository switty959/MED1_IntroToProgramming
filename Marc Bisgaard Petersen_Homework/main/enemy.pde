class Enemy
{
  int health;
  int speed;
  int maxSpeed;
  float xPos,yPos;
  int[] enemySize = new int[4]; // for enemy's head and body
  int distance = 100;
 
  Enemy(int tempHealth, int tempSpeed, int tempXPos,int tempYPos, 
        int tempEnemyBodySizeW,int tempEnemyBodySizeH, int tempEnemyHead,
        int tempEnemyHands)
  {
    health = tempHealth;
    speed  = tempSpeed/2;
    xPos = tempXPos;
    yPos = tempYPos;
    enemySize[0] = tempEnemyBodySizeW; // width of body
    enemySize[1] = tempEnemyBodySizeH; // height of body
    enemySize[2] = tempEnemyHead;//size of head
    enemySize[3] = tempEnemyHands;//size of hands
    maxSpeed = tempSpeed;
  }
   void display() // display the enemy
  {
    fill(#04931D);
    rect(xPos,yPos,enemySize[0],enemySize[1]);//body
    fill(#04C626);
    ellipse(xPos+enemySize[0]/2,yPos+enemySize[1]/2,enemySize[2],enemySize[2]);//head
    ellipse(xPos+enemySize[0],yPos+enemySize[1]/2,enemySize[3],enemySize[3]);// right hand
    ellipse(xPos,yPos+enemySize[1]/2,enemySize[3],enemySize[3]);// right hand
    movement();
  }
  void movement() // controls what the enemy does
  {
    if(dist(player.xPos,player.yPos,xPos,yPos)>distance) // if distance between enemy and player is more than 200 pixels
    {
      follow(); // follow function that makes the enemy chase the player
    }
    else
    {
      attack();// attack function that makes the enemy shoot after the player
    }
   
  }
  void attack()
  {
    speed=0; // stops movement
    player.health--;
  }
  void follow()
  {
    speed =maxSpeed/2; // halves the current movement speed
    if (player.xPos > xPos) // check position between player and enemy in x
      {
        xPos = xPos+speed; // move in posivite x 
      } 
      else 
      {
        xPos = xPos-speed;  // move in negative x
      }
      if (player.yPos >yPos) //check position between player and enemy in y
      {
        yPos = yPos+speed;// move in posivite y
      } 
      else 
      {
        yPos = yPos-speed; // move in negative y
      }
  }
  
}
