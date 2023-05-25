void main() {
  Graph graph = Graph();

  graph.insert(5, 3, true);
  graph.insert(3, 4, true);
  graph.insert(5, 6, false);

  print(graph.map);
}

class Graph {
  Map<int, List<int>> map = {};

  insert(int vertex, int edge, bool isBidirectional) {
    if (!map.containsKey(vertex)) {
      addVertex(vertex);
    }
    if (!map.containsKey(edge)) {
      addVertex(edge);
    }

    map[vertex]!.add(edge);
    if (isBidirectional) {
      map[edge]!.add(vertex);
    }
  }

  addVertex(int key) {
    map[key] = [];
  }

  removeEdge(vertex1, vertex2) {
    map[vertex1]!.remove(vertex2);
    map[vertex2]!.remove(vertex1);
  }

  display(){
    
  }
}
