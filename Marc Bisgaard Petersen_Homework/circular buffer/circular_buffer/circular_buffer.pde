Sword sword;
int num = 50;
int[] x = new int[num];
int[] y = new int[num];
int indexPosition = 0;
int swordSizeW = 50; // width of the blade
int swordSizeH = 100; // height of the blade
int pointH = 25; // height of the triangle for the sword
int[] guardSize = {10,100};
int[] gripeSize = {18,30};


void setup() {
  size(800, 600);
  noStroke();
 }

void draw() {
  background(0);
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  // Cycle between 0 and the number of elements
  indexPosition = (indexPosition + 1) % num;
  for (int i = 0; i < num; i++) {
    // Set the array position to read
    int pos = (indexPosition + i) % num;
    //float radius = (num-i) / 2.0;
sword = new Sword(x[pos],y[pos],swordSizeW,swordSizeH,gripeSize[0],gripeSize[1],guardSize[0],guardSize[1],pointH);
    sword.display();
    
    //ellipse(x[pos], y[pos], radius, radius);
  }
}
