void dfs(Map<String, List<String>> graph, String startNode) {
  Set<String> visited = Set();

  void traverse(String node) {
    print(node);
    visited.add(node);
    List<String> adjacentNodes = graph[node]!;
    for (String adjacentNode in adjacentNodes) {
      if (!visited.contains(adjacentNode)) {
        traverse(adjacentNode);
      }
    }
  }

  traverse(startNode);
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

  dfs(graph, 'A');
}
