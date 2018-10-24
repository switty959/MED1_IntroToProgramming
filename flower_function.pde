void flower(int Width, int Height, float radius, int n_pentals, int farveR, int farveB,int farveG, float centerSize)
{
    for (float i=0;i<PI*2;i+=2*PI/n_pentals) {
    fill(farveR,farveB,farveG);
  ballX=Width + radius*cos(i);
  ballY=Height + radius*sin(i);
  ellipse(ballX,ballY,radius,radius); 
  }
  fill(200,0,0);
  ellipse(Width,Height,radius*centerSize,radius*centerSize);
}
