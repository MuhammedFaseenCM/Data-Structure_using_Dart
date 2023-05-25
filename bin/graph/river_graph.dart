main() {
  RiverGraph riverGraph = RiverGraph();

  List<List<int>> matrix = [
    [1, 0, 0, 1, 1],
    [0, 1, 1, 1, 0],
    [0, 0, 0, 0, 1],
    [1, 0, 0, 0, 1]
  ];
  var result = riverGraph.checkRiverSize(matrix);

  print(result);
}

class RiverGraph {
  List<int> checkRiverSize(List<List<int>> matrix) {
    List<int> sizes = [];
    List<List<bool>> visited = List.generate(
        matrix.length, (i) => List<bool>.filled(matrix[0].length, false));

    for (var i = 0; i < matrix.length; i++) {
      for (var j = 0; j < matrix[0].length; j++) {
        if (visited[i][j]) {
          continue;
        } else {
          traverseThroughRiver(i, j, matrix, visited, sizes);
        }
      }
    }

    return sizes;
  }

  traverseThroughRiver(int i, int j, List<List<int>> matrix,
      List<List<bool>> visited, List<int> sizes) {
    int currentRiverSize = 0;

    List<List<int>> nodesToExplore = [];
    nodesToExplore.add([i, j]);
    while (nodesToExplore.isNotEmpty) {
      List<int> currentNode = nodesToExplore.removeLast();
      i = currentNode[0];
      j = currentNode[1];
      if (visited[i][j]) {
        continue;
      }
      visited[i][j] = true;
      if (matrix[i][j] == 0) {
        continue;
      }
      currentRiverSize++;
      List<List<int>> nearest = getAdjuscentNodes(i, j, visited, matrix);

      nodesToExplore.addAll(nearest);
    }
    sizes.add(currentRiverSize);
  }

  List<List<int>> getAdjuscentNodes(
      int i, int j, List<List<bool>> visited, List<List<int>> matrix) {
    List<List<int>> nearest = [];
    if (i > 0 && visited[i - 1][j]) {
      nearest.add([i - 1, j]);
    }
    if (i < matrix.length - 1 && visited[i + 1][j]) {
      nearest.add([i + 1, j]);
    }
    if (j > 0 && visited[i][j - 1]) {
      nearest.add([i, j - 1]);
    }
    if (j < matrix[0].length - 1 && visited[i][j + 1]) {
      nearest.add([i, j + 1]);
    }
    
    return nearest;
  }
}
