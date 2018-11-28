float r = 0;
float theta = 0;
float xoff = 0.0;
float znoise = 0.0;
float ynoise = 0.0;
float income = 0.06;

void setup() {
  size(480, 270);
  background(255);
}

void draw() {
  xoff = xoff + .01;
  float n = noise(xoff)*r;
  float colour = noise(xoff, ynoise, znoise) * 256;
  ynoise+=income;
  znoise+=income;
  
  // Polar to Cartesian conversion
  float x = r * cos(theta);
  float y = r * sin(theta);

  // Draw an ellipse at x,y
  noStroke();
  println(colour);
  fill(0,0,colour);
  // Adjust for center of window
  ellipse(x+width/2, y+height/2, n, n); 

  // Increment the angle
  theta += 0.01;
  // Increment the radius
  r += 0.1;
}
