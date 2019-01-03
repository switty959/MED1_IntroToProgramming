PImage basket, basketA;
Item[] items = new Item[4];
Equipment[] equipment = new Equipment[4];
PImage itemsImages[] = new PImage[items.length];
PImage equipmentImages[] = new PImage[equipment.length];
color bgcolor = #038FFF;
void setup()
{
  items[0] = new Item("Carp", "something", "carp.jpg", 1, 74.95,0);
  items[1] = new Item("Dory", "somthing 2", "dory.jpg", 2, 99.95,0);
  items[2] = new Item("Lobster", "something 3", "lobster.jpg", 3, 39.95,0);
  items[3] = new Item("YellowTail", "something 4", "yellowtail.jpg", 4, 14.95,0);
  equipment[0] = new Equipment("Fishing Rod", "something", "fishingRod.jpg", 5, 199.95,0);
  equipment[1] = new Equipment("Hook", "somthing 2", "hook.jpg", 6, 4.95,0);
  equipment[2] = new Equipment("Bait", "something 3", "bait.jpg", 7, 18.95,0);
  equipment[3] = new Equipment("Fishing Net", "something 4", "fishingNet.jpg", 8, 59.95,0);
  basket = loadImage("basket.png");
  basketA = loadImage("basketA.png");
  for (int i =0; i<items.length; i++)
  {
    itemsImages[i]  = loadImage(items[i].imageRoute);
  }
  for (int i =0; i<equipment.length; i++)
  {
    equipmentImages[i]  = loadImage(equipment[i].imageRoute);
  }
  size(720, 1280);

  if (currentPage == 0)
  {
    currentPage = idPage[0];
  }
}
void draw()
{
  background(#038FFF);
  header();

  if (currentPage == idPage[0])
  {
    items();
  }
  if (currentPage == idPage[1])
  {
    basketPage();
  }
  if (currentPage == idPage[2])
  {
    equipment();
  }
}
