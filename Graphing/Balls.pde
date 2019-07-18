int x, y, wallLocation, velX;

void setup(){
  x = 50;
  y = 50;
  size(500, 500);
  wallLocation = 100;
  velX=50;
}

void draw(){
  background(1);
  fill (255);
  ellipse(x, y, 40, 40);
  x+=velX;
  if(x<0) velX = velX*-1;
  if(x>500) velX = velX*-1;
}
