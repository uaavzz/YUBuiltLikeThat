class myDot{
  int x;
  int y;
  int w; 
  int h;
  color c;
  
  myDot(int x, int y, int w, int h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    c = color(random(255), 240, 240);
  }
  
  void move(){
    x += random(-2, 2);
    y += random(-2, 2);
  }
  
  void drawDot(){
    fill(c);
    move();
    ellipse(x, y, w, h);
    if (c >= 255) c=0;
    else c++;
  }
}

void keyPressed(){
  if(key == ' ') background(c);
}
