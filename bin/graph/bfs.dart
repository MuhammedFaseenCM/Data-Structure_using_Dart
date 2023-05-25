class Graph {
  late int vertices;
  late List<List<int>> adjList;

  Graph(this.vertices) {
    adjList = List<List<int>>.filled(vertices, []);
  }

  void addEdge(int source, int destination) {
    adjList[source].add(destination);
    adjList[destination].add(source);
  }

  void bfs(int startVertex) {
    Set<int> visited = <int>{};
    List<int> queue = [];

    queue.add(startVertex);
    visited.add(startVertex);

    while (queue.isNotEmpty) {
      int currentVertex = queue.removeAt(0);
      print(currentVertex);

      List<int> neighbors = adjList[currentVertex];
      for (int neighbor in neighbors) {
        if (!visited.contains(neighbor)) {
          queue.add(neighbor);
          visited.add(neighbor);
        }
      }
    }
  }

  void dfs(int startVertex) {
    Set<int> visited = <int>{};
    _dfsHelper(startVertex, visited);
  }

  void _dfsHelper(int currentVertex, Set<int> visited) {
    visited.add(currentVertex);
    print(currentVertex);

    List<int> neighbors = adjList[currentVertex];
    for (int neighbor in neighbors) {
      if (!visited.contains(neighbor)) {
        _dfsHelper(neighbor, visited);
      }
    }
  }
}

void main() {
  Graph graph = Graph(6);
  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(1, 3);
  graph.addEdge(2, 3);
  graph.addEdge(2, 4);
  graph.addEdge(3, 4);
  graph.addEdge(3, 5);

  print('BFS Traversal:');
  graph.bfs(0);

  print('\nDFS Traversal:');
  graph.dfs(3);
}
