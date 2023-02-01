//insertion sort
class InsertionSort {
  void sort(List<int> array) {
    int size = array.length;
    for (var i = 1; i < size; i++) {
      int key = array[i];
      int j = i - 1;
      while (j >= 0 && array[j] > key) {
        array[j + 1] = array[j];
        j = j - 1;
      }
      array[j + 1] = key;
    }
  }

  void printArray(List<int> array) {
    print(array);
  }
}

void main() {
  InsertionSort ins = InsertionSort();
  List<int> array = [12, 11, 13, 5, 6];
  ins.sort(array);
  ins.printArray(array);
}


/*
input--->[12, 11, 13, 5, 6]
output-->[5, 6, 11, 12, 13]
 */