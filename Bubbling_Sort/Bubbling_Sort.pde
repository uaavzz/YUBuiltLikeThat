int[] array = new int[360];
int maxVal = 500;
//Visual parameters
int speed = 20;
int xStart = 90;
int lineSpace = 20;

void setup(){
  size(500, 500);
  for (int i=0; i<array.length; i++) {
    array[i] = (int)random(0,maxVal);
  }
  frameRate(speed);
  colorMode(HSB);
}

int i = 0;

void draw (){
  background(HSB);
  
  for (int j=0; j<array.length; j++){
    if (array[i]>array[j]) {
      int temp = array[j];
      array[j] = array[i];
      array[i] = temp;
    }
    fill(255);
    text(array[j], 50, 30+20*j);
    
    float c = map(array[j], 0, maxVal, 0, 360);
    stroke (c, 250, 250);
    sphere(20);
    
    line(xStart, 25+lineSpace*j, xStart+5*array[j], 25+lineSpace*j);
  }
  i++;
  if (i>array.length-1)
     noLoop();
}
