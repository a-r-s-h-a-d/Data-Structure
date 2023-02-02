class SelectionSort {
  void selection(List<int> array) {
    int size = array.length;
    for (var i = 0; i < size - 1; i++) {
      int min_idx = i;
      for (var j = i + 1; j < size; j++) {
        if (array[j] < array[min_idx]) {
          min_idx = j;
        }
      }
      int temp = array[min_idx];
      array[min_idx] = array[i];
      array[i] = temp;
    }
  }

  void printArray(List<int> array) {
    print(array);
  }
}

void main(List<String> args) {
  SelectionSort sort = SelectionSort();
  List<int> array = [64, 25, 12, 22, 11];

  sort.selection(array);
  sort.printArray(array);
}
