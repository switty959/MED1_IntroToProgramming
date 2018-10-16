Flowers myFlower1;
Flowers myFlower2;
Flowers myFlower3;

float ballX;
float ballY;
int pentals =2;
int colorSelect = 256;
float radius[] = {10,100,1.1,1.4};
int numberOfPentals[] = {4,8};
int speed = 5;


void setup() {
  size(600,400);
  background(#43AF76);
  /*int tempXpos, int tempYpos, float tempRadius, int tempNumOfPentals,int tempFarverR,int tempFarverB,int tempFarverG, float tempOrigo, int tempSpeed*/
  myFlower1 = new Flowers(int(random(width)),int(random(height)),random(radius[0],radius[1]),int(random(numberOfPentals[0],numberOfPentals[1])),int(random(colorSelect)),int(random(colorSelect)),int(random(colorSelect)),random(radius[2],radius[3]),speed);
  myFlower2 = new Flowers(int(random(width)),int(random(height)),random(radius[0],radius[1]),int(random(numberOfPentals[0],numberOfPentals[1])),int(random(colorSelect)),int(random(colorSelect)),int(random(colorSelect)),random(radius[2],radius[3]),speed);
  myFlower3 = new Flowers(int(random(width)),int(random(height)),random(radius[0],radius[1]),int(random(numberOfPentals[0],numberOfPentals[1])),int(random(colorSelect)),int(random(colorSelect)),int(random(colorSelect)),random(radius[2],radius[3]),speed);
  
}
void draw()
{
  background(#43AF76);
  
  myFlower1.display();
  myFlower1.move();
  myFlower1.bounce();
  
  myFlower2.display();
  myFlower2.move();
  myFlower2.bounce();
}
