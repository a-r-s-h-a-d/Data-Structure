void BFS(Map<String, List<String>> graph, String startNode) {
  Set<String> visited = Set();
  List<String> queue = [];
  visited.add(startNode);
  queue.add(startNode);

  while (queue.length > 0) {
    String currentNode = queue.removeAt(0);
    print(currentNode);

    List<String> adjacentNodes = graph[currentNode]!;
    for (String aNode in adjacentNodes) {
      if (!visited.contains(aNode)) {
        visited.add(aNode);
        queue.add(aNode);
      }
    }
  }
}

void main() {
  Map<String, List<String>> graph = {
    'A': ['B', 'C'],
    'B': ['A', 'D', 'E'],
    'C': ['A', 'F'],
    'D': ['B'],
    'E': ['B', 'F'],
    'F': ['C', 'E']
  };

  BFS(graph, 'A');
}
