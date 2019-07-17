class Edge {
  Node origin;
  Node destination;
  String type;
  int weight;
  
  Edge(Node p1, Node p2) {
    origin = p1;
    destination = p2;
    weight  = int(random(1,13));
  }
  
  void draw(){
    line(origin.loc.x, origin.loc.y, destination.loc.x, destination.loc.y);
    stroke(200, 0, 0);
    strokeWeight(2);
  }
}
