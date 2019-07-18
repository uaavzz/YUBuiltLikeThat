int angle = 0;
Mover mover;
void setup() {
  size(1000,1000);
  background(RGB);
  noStroke();
  fill(1);
  mover = new Mover(); 
  colorMode(HSB);
  
}
float c;
void draw() {
  // Draw only when mouse is pressed
  if (mousePressed == true) {
    ;
    angle += 5;
    float val = cos(radians(angle)) * 12.0;
    for (int a = 0; a < 360; a += 75) {
      float xoff = cos(radians(a)) * val;
      float yoff = sin(radians(a)) * val;
      fill(1);
      ellipse(mouseX + xoff, mouseY + yoff, val, val);
    if (c >= 255) c=0;
    else c++;
    }
    fill(1);
    ellipse(mouseX, mouseY, 2, 2);
    stroke(1);
    if (mousePressed == true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
    }
 }
 mover.update();
 mover.display();
}
