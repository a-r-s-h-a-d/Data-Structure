import 'dart:io';

class Graph {
  late int numvertices;
  late List<List<int>> adjacencymatrix;

  Graph(int numvertices) {
    this.numvertices = numvertices;
    this.adjacencymatrix =
        List.generate(numvertices, (index) => List.filled(numvertices, 0));
  }

  void addEdge(int i, int j) {
    if (i >= 0 && i < numvertices && j >= 0 && j < numvertices) {
      adjacencymatrix[i][j] = 1;
      adjacencymatrix[j][i] = 1;
    }
  }

  void removeEdge(int i, int j) {
    if (i >= 0 && i < numvertices && j >= 0 && j < numvertices) {
      adjacencymatrix[i][j] = 0;
      adjacencymatrix[j][i] = 0;
    }
  }

  void display() {
    for (int i = 0; i < numvertices; i++) {
      stdout.write('$i : ');
      for (int j = 0; j < numvertices; j++) {
        stdout.write("${adjacencymatrix[i][j]} ");
      }
      stdout.write('\n');
    }
  }
}

void main() {
  Graph g = Graph(5);
  g.addEdge(0, 1);
  g.addEdge(0, 2);
  g.addEdge(1, 2);
  g.addEdge(2, 3);
  g.addEdge(3, 4);

  g.display();
}
