class Node {
    PVector loc;
    String name;
    Node(String _name){
      this.name = _name;
      this.loc = new PVector(random(20, 500), random(30, 400));
    }
    void draw(){
      fill (0);
      textSize(14);
      text(name, loc.x, loc.y);
      
      fill(0, 20, 235);
      ellipse(loc.x, loc.y, 20, 20);
    }
}
