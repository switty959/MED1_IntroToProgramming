Flowers[][] myFlower = new Flowers[6][8];
Flowers mouseFlower;



float ballX;
float ballY;
int pentals =2;
int colorSelect = 256;
float radius[] = {10,50,1.1,1.4};
int numberOfPentals[] = {4,12};
int speed[] = {1,10};
int backgroundColor = #43AF76;
int fixedXPos,fixedYPos;




void setup() {
  
  fixedYPos =height/myFlower.length;
  fixedXPos = width/myFlower.length;
  int xOffset = fixedXPos/2;
  int yOffset = fixedYPos/2;
  int middle = height /2;
  
  
  size(1200,800);
  for(int i = 0; i<myFlower.length;i++)
  {
    for(int j = 0; j<myFlower.length;j++)
    {
      myFlower[i][j] = new Flowers(fixedXPos*i+xOffset,fixedYPos*j+yOffset,random(radius[0],radius[1]),int(random(numberOfPentals[0],numberOfPentals[1])),
                  int(random(colorSelect)),int(random(colorSelect)),int(random(colorSelect)),random(radius[2],radius[3]),int(random(speed[0],speed[1])));
    }
  }
  
  mouseFlower = new Flowers(mouseX,mouseY,random(radius[0],radius[1]),int(random(numberOfPentals[0],numberOfPentals[1])),int(random(colorSelect)),int(random(colorSelect)),int(random(colorSelect)),random(radius[2],radius[3]),int(random(speed[0],speed[1])));

}
void draw()
{
  background(backgroundColor);
  
  if(mouseFlower.overlaps(myFlower[1][1]) == true)
  {
    backgroundColor = #232323;
  }
  else
  {
    backgroundColor = #43AF76;
  }
  
  for(int i = 0; i<myFlower.length;i++)
  {
    for(int j = 0; j<myFlower.length;j++)
    {
    myFlower[i][j].display();
    }
  }
  /*mouseFlower.display();
  mouseFlower.xPos = mouseX;
  mouseFlower.yPos = mouseY;*/
}
