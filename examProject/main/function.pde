float headerSize[] = {-1, 0, 721, 128};
float multiplier[] = {0.1, 0.8, 0.83, 0.9, 5, 0.3, 0.6, 0.75};
int TextSize[] = {32, 20, 12};
int margin[] = {30, 60, 65, 20, 40, 90, 15,8};
int itemSize[] = {25, 150, 670, 175};
int buyButton[] = {100, 40, 160};
int numberOfItemInBasket = 0;
int idPage[] = {1, 2, 3};
int currentPage = 0;
color itemColor = #09C0E8;
color headerColor = #0AFFE9;
color menuhover = #094AE8;
String headerHeadline = "Sea Shop";
String headerTagline = "All from the sea";
String totalItems = "number of total items : ";
String menutitel[]  = {"Fish", "Equipment"};

void header()
{
  /*for the rect*/
  noStroke();
  fill(headerColor);
  rect(headerSize[0], headerSize[1], headerSize[2], headerSize[3]);

  /*menu buttons with a line between them*/
  fill(itemColor);
  noStroke();
  rect(margin[1], headerSize[3]-margin[4], buyButton[0], buyButton[1]);
  rect(margin[1]+buyButton[0], headerSize[3]-margin[4], buyButton[2], buyButton[1]);
  stroke(1);
  line(margin[1]+buyButton[0], headerSize[3]-margin[4]+buyButton[1], margin[1]+buyButton[0], headerSize[3]-margin[4]);

  /*for the headline*/
  fill(0);
  textAlign(LEFT);
  textSize(TextSize[0]); 
  text(headerHeadline, margin[1], margin[0], headerSize[2], headerSize[3]);

  /*for the tag line*/
  textSize(TextSize[1]); 
  text(headerTagline, margin[1], margin[2], headerSize[2], headerSize[3]);

  /*just a line to seprate headline and tagline from the basket*/
  stroke(1);
  line(headerSize[2]*multiplier[1], headerSize[3]*multiplier[0], 
    headerSize[2]*multiplier[1], headerSize[3]*multiplier[3]);
  if (mouseX >=headerSize[2]*multiplier[2] && mouseX <=headerSize[2]*multiplier[2]+basket.width/multiplier[4] &&
    mouseY >=headerSize[3]*multiplier[0] && mouseY <=headerSize[3]*multiplier[0]+basket.height/multiplier[4])
  {
    image(basketA, headerSize[2]*multiplier[2], headerSize[3]*multiplier[0], 
      basket.width/multiplier[4], basket.height/multiplier[4]);
  } else
  {
    image(basket, headerSize[2]*multiplier[2], headerSize[3]*multiplier[0], 
      basket.width/multiplier[4], basket.height/multiplier[4]);
  }

  text(numberOfItemInBasket, headerSize[2]*multiplier[2], headerSize[3]*multiplier[5]);
  for (int i = 0; i<menutitel.length; i++)
  {
    text(menutitel[i], margin[5]+buyButton[0]*i, headerSize[3]-margin[6]);
  }
}
//items page with idpage[0]
void items()
{

  for (int i =0; i<items.length; i++)
  {
    /*background box item*/
    fill(itemColor);
    noStroke();
    rect(itemSize[0], itemSize[1]+(itemSize[3]+margin[3])*i, itemSize[2], itemSize[3]);

    //buybutton
    fill(headerColor);
    rect(itemSize[2]*multiplier[3]-margin[4], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[6], 
      buyButton[0], buyButton[1]);

    fill(0);
    stroke(1);
    textSize(TextSize[1]);
    //image for item
    image(itemsImages[i], itemSize[0]+margin[4], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4], 100, 100);
    // titel for item
    text(items[i].productName, itemSize[0]+itemSize[2]*multiplier[5], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4]);

    text(items[i].price+ "DKK", itemSize[2]*multiplier[3]-margin[0], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[5]);     
    textSize(TextSize[2]);
    //desciption of the item
    text(items[i].desciption, itemSize[0]+itemSize[2]*multiplier[5], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4]+margin[3], 
      itemSize[3], itemSize[1]);
    //text for buy button
    text("add to basket", itemSize[2]*multiplier[3]-margin[0], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[7]);
  }
  buttonChecker();
}

//equipment page with idpage[2]
void equipment()
{

  for (int i =0; i<items.length; i++)
  {
    /*background box item*/
    fill(itemColor);
    noStroke();
    rect(itemSize[0], itemSize[1]+(itemSize[3]+margin[3])*i, itemSize[2], itemSize[3]);

    //buybutton
    fill(headerColor);
    rect(itemSize[2]*multiplier[3]-margin[4], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[6], 
      buyButton[0], buyButton[1]);

    fill(0);
    stroke(1);
    textSize(TextSize[1]);
    //image for item
    image(equipmentImages[i], itemSize[0]+margin[4], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4], 100, 100);
    // titel for item
    text(equipment[i].productName, itemSize[0]+itemSize[2]*multiplier[5], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4]);

    text(equipment[i].price+ "DKK", itemSize[2]*multiplier[3]-margin[0], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[5]);     
    textSize(TextSize[2]);
    //desciption of the item
    text(equipment[i].desciption, itemSize[0]+itemSize[2]*multiplier[5], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4]+margin[3], 
      itemSize[3], itemSize[1]);
    //text for buy button
    text("add to basket", itemSize[2]*multiplier[3]-margin[0], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[7]);
  }
  buttonChecker();
}

void basketPage()
{
  /*background box item*/
    fill(itemColor);
    noStroke();
    rect(itemSize[0], itemSize[1]+margin[3], itemSize[2], itemSize[3]);

    //buybutton
    fill(headerColor);
    rect(itemSize[2]*multiplier[7], 
      itemSize[1]+margin[3]+itemSize[3]*multiplier[0], 
      buyButton[0]+margin[1], buyButton[1]);
      fill(0);
      textSize(TextSize[2]);
      text(totalItems+numberOfItemInBasket,itemSize[2]*multiplier[7]+margin[7],itemSize[1]+margin[3]+itemSize[3]*multiplier[0]+margin[3]);
      for(int i =0;i<items.length;i++)
      {
        if(items[i].numbers != 0)
        {   
    textSize(TextSize[1]);
    //image for item
    image(itemsImages[i], itemSize[0]+margin[4], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4], 100, 100);
    // titel for item
    text(items[i].productName, itemSize[0]+itemSize[2]*multiplier[5], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4]);

    text(items[i].price+ "DKK", itemSize[2]*multiplier[3]-margin[0], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[5]);     
    textSize(TextSize[2]);
    //desciption of the item
    text(items[i].desciption, itemSize[0]+itemSize[2]*multiplier[5], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4]+margin[3], 
      itemSize[3], itemSize[1]);
        }
      }
      for(int i =0;i<equipment.length;i++)
      {
        if(equipment[i].numbers != 0)
        {   
    textSize(TextSize[1]);
    //image for item
    image(equipmentImages[i], itemSize[0]+margin[4], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4], 100, 100);
    // titel for item
    text(equipment[i].productName, itemSize[0]+itemSize[2]*multiplier[5], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4]);

    text(equipment[i].price+ "DKK", itemSize[2]*multiplier[3]-margin[0], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[5]);     
    textSize(TextSize[2]);
    //desciption of the item
    text(equipment[i].desciption, itemSize[0]+itemSize[2]*multiplier[5], 
      itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]/multiplier[4]+margin[3], 
      itemSize[3], itemSize[1]);
        }
      }
  
}

void buttonChecker()
{
  for (int i =0; i<items.length; i++)
  {
    if (mouseX >=itemSize[2]*multiplier[3]-margin[4] && mouseX <=itemSize[2]*multiplier[3]-margin[4]+buyButton[0] &&
      mouseY>=itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[6] && mouseY<=itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[6]+buyButton[1] )
    {
      noStroke();
      fill(bgcolor);
      rect(itemSize[2]*multiplier[3]-margin[4], 
        itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[6], 
        buyButton[0], buyButton[1]);
      fill(0);
      text("add to basket", itemSize[2]*multiplier[3]-margin[0], 
        itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[7]);
    }
  }

  if (mouseX >=margin[1] && mouseX <=margin[1]+buyButton[0]&&
    mouseY>=headerSize[3]-margin[4] && mouseY<=headerSize[3]-margin[4]+buyButton[1])
  {
    textSize(TextSize[1]); 
    noStroke();
    fill(menuhover);
    rect(margin[1], headerSize[3]-margin[4], buyButton[0], buyButton[1]);
    fill(0);
    text(menutitel[0], margin[5]+buyButton[0]*0, headerSize[3]-margin[6]);
  }


  if (mouseX >=margin[1]+buyButton[0] && mouseX <=margin[1]+buyButton[2]+buyButton[0]&&
    mouseY>=headerSize[3]-margin[4] && mouseY<=headerSize[3]-margin[4]+buyButton[1])
  {
    textSize(TextSize[1]); 
    noStroke();
    fill(menuhover);
    rect(margin[1]+buyButton[0], headerSize[3]-margin[4], buyButton[2], buyButton[1]);
    fill(0);
    text(menutitel[1], margin[5]+buyButton[0]*1, headerSize[3]-margin[6]);
  }
}
void mouseClicked()
{
  for (int i =0; i<items.length; i++)
  {
    if (mouseX >=itemSize[2]*multiplier[3]-margin[4] && mouseX <=itemSize[2]*multiplier[3]-margin[4]+buyButton[0] &&
      mouseY>=itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[6] && mouseY<=itemSize[1]+(itemSize[3]+margin[3])*i+itemSize[3]*multiplier[6]+buyButton[1] )
    {
      numberOfItemInBasket++;
      if(currentPage == idPage[0])
      {
        items[i].numbers++;
      }
      if(currentPage == idPage[2])
      {
        equipment[i].numbers++;
      }
    }
  }
  if (mouseX >=headerSize[2]*multiplier[2] && mouseX <=headerSize[2]*multiplier[2]+basket.width/multiplier[4] &&
    mouseY >=headerSize[3]*multiplier[0] && mouseY <=headerSize[3]*multiplier[0]+basket.height/multiplier[4])
  {
    currentPage = idPage[1];
    println(currentPage);
  }
  if (mouseX >=margin[1] && mouseX <=margin[1]+buyButton[0]&&
    mouseY>=headerSize[3]-margin[4] && mouseY<=headerSize[3]-margin[4]+buyButton[1])
  {
    currentPage = idPage[0];
  }
  if (mouseX >=margin[1]+buyButton[0] && mouseX <=margin[1]+buyButton[2]+buyButton[0]&&
    mouseY>=headerSize[3]-margin[4] && mouseY<=headerSize[3]-margin[4]+buyButton[1])
  {
    currentPage = idPage[2];
  }
}
