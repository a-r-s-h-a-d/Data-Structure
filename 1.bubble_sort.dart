//Bubble Sort

class BubbleSort {
  void bubbleSort(List<int> array) {
    int size = array.length;
    for (var i = 0; i < size - 1; i++) {
      for (var j = i + 1; j < size; j++) {
        if (array[i] > array[j]) {
          var temp = array[i];
          array[i] = array[j];
          array[j] = temp;
        }
      }
    }
  }

  void printArray(List<int> array) {
    print(array);
  }
}

void main(List<String> args) {
  BubbleSort sort = BubbleSort();
  List<int> array = [2, 5, 4, 1, 6, 3];
  sort.bubbleSort(array);
  sort.printArray(array);
}

/*
Input  : [2, 5, 4, 1, 6, 3]
Output : [1, 2, 3, 4, 5, 6]
*/