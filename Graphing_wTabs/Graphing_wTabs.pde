ArrayList<Edge> edges;
HashSet<Node> nodes;
int numNodes = 7;

void setup(){
  size(1200, 500);
  init();
}

void init(){
  edges = new ArrayList<Edge>();
  nodes = new HashSet<Node>();
  
  for(int i = 0; i<numNodes; i++){
    Node n = new Node(str(i));
    nodes.add(n);
  }
  
  for(Node n1 : nodes){
    for(Node n2 : nodes){
        float x = random(0, 1);
        if(x < 0.4){
          Edge e = new Edge(n1, n2);
          edges.add(e);
        }
    }
  }
}

void draw(){
   background(255);
  for(Edge e : edges) e.draw();
  for(Node n : nodes) n.draw();
}
