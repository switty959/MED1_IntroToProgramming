class Sword
{
  int mouseXPos,mouseYPos;
  int[] SwordSize = new int[2]; // for the blade
  int[] gripeSize = new int[2];
  int[] guardSize = new int[2];
  int point;

 
  Sword(int tempPosX,int tempPosY, int tempBladeW,
        int tempBladeH,int tempGripeW,int tempGripeH,int tempGuardW,int tempGuardH,int tempPoint)
  {
    mouseXPos = tempPosX;
    mouseYPos = tempPosY;
    SwordSize[0] = tempBladeW; // width of blade
    SwordSize[1] = tempBladeH; // height of blade
    gripeSize[0] = tempGripeW; // width of blade
    gripeSize[1] = tempGripeH; // height of blade
    guardSize[0] = tempGuardW; // width of blade
    guardSize[1] = tempGuardH; // height of blade
    point =tempPoint;


  }
   void display() // display the enemy
  {
    fill(#B9B4B4);
    triangle(mouseXPos, mouseYPos, mouseXPos+SwordSize[0],mouseYPos,mouseXPos+SwordSize[0]/2,mouseYPos-point);
    rect(mouseXPos,mouseYPos,SwordSize[0],SwordSize[1]);
    fill(#FFF303);
    rect(mouseXPos-point,mouseYPos+SwordSize[1],guardSize[1],guardSize[0]);
    fill(#B96306);
    rect(mouseXPos+SwordSize[0]/3,mouseYPos+SwordSize[1]+guardSize[0],gripeSize[0],gripeSize[1]);
  }
}
