Player player;
Enemy enemy;
int hp = 100;
int movementSpeed = 2;
int[] playerBody = {35,20,15,10};
int start;
int goal = 30000; //30 secs
boolean playable = false;
String[] startscreenText = {"welcome to tag game","the goal is to run away from the green guy",
                            "if he stay near you, you will lose health points"," survive for 30 seconds to win",
                            "to move the guys, use key arrows", "hit any button to start"};
String pissOff = "you are dead";
String scoreText = "your score is : ";
int[] textMargin = {10,50};
int timer;

void setup()
{
  start = millis();
  size(800,800);
   player = new Player(hp,movementSpeed,width/2,height/2,playerBody[0],
                playerBody[1],playerBody[2],playerBody[3]);
   enemy =  new Enemy(hp,movementSpeed,int(random(width)),int(random(height)),playerBody[0],
                playerBody[1],playerBody[2],playerBody[3]);
}

void draw()
{
  if(!playable)
  {
    startScreenText();
  }
 if(playable)
 {
  background(#AFACA6);
  fill(0);
  textSize(12);
  textAlign(LEFT, TOP);
  text(player.health + "/" + hp,25,25);
  text("between player and enemy : "+dist(player.xPos,player.yPos,enemy.xPos,enemy.yPos),25,50);
  timer = millis()-start;
  text(timer, 25, 65);
  player.display();
  enemy.display(); 
  
  if(player.health<0)
   {
     dead();
   }
   if(timer>goal)
   {
     winner();
   }
 }
}
void startScreenText()
{
  textSize(32);
  textAlign(CENTER, TOP);
  fill(#000000);
  text(startscreenText[0],width/2-textMargin[0],height/3);
  textSize(24);
  text(startscreenText[1],width/2,height/3+textMargin[1]);
  text(startscreenText[2],width/2,height/3+textMargin[1]*2);
  text(startscreenText[3],width/2,height/3+textMargin[1]*3);
  text(startscreenText[4],width/2,height/3+textMargin[1]*4);
  text(startscreenText[5],width/2,height/3+textMargin[1]*5);
  player.speed=0;
}
void dead()
{
  if(player.health<0)
  {
   textSize(32);
  fill(#000000);
  textAlign(CENTER, CENTER);
  text(pissOff,width/2-textMargin[0],height/2);
  text(scoreText+timer,width/2,height/2+textMargin[1]);
  //text("press r to reset the game",width/2,height/2+textMargin[1]*2);
  player.speed=0;
  noLoop();
  }
}
void winner()
{
  textSize(32);
  fill(#000000);
  textAlign(CENTER, CENTER);
  text(scoreText+timer,width/2,height/2+textMargin[1]);
  player.speed=0;
  noLoop();
}

void keyPressed()
{
  if(!playable)
  {
    player.speed =2;
    playable=true;
  }
}
