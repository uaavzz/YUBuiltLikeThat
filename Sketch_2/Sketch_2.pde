int w, h, x, y, x1, y1;
ArrayList<myDot> dots;
int numDots = 300;

void setup(){
  size(1000, 500);
  background(178, 170, 155);
  colorMode(RGB, 208, 135, 0);
  
  dots = new ArrayList<myDot>();
  
  for(int i =0; i<numDots; i++){
    x = int(random(width));
    y = int(random(height));
    w = 40;
    h = 40;
    myDot dot = new myDot(x, y, w, h);
    dots.add(dot);
  }
  w = 100;
  h = 100;
  x = 100;
  y = 100;
  x1 = 100;
  y1 = 100;
}

void draw(){
  for(myDot d : dots){
    d.drawDot();
  }
}
