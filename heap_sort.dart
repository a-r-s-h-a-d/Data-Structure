class Heap {
  List<int> array = [];
  Heap([List<int> elements = const []]) {
    array.addAll(elements);
    if (array.isNotEmpty) {
      heapify();
    }
  }

  heapSort() {
    // First, convert the heap into a max heap
    heapify();

    // Swap the root of the max heap with the last element of the heap,
    // and reduce the size of the heap by 1
    for (int i = array.length - 1; i > 0; i--) {
      int temp = array[0];
      array[0] = array[i];
      array[i] = temp;

      // Restore the max heap property by shifting down the root
      shiftDown(0, i);
    }
  }

  heapify() {
    int lastParentIdx = (array.length ~/ 2) - 1;
    for (int i = lastParentIdx; i >= 0; i--) {
      shiftDown(i, array.length);
    }
  }

  shiftDown(int index, int heapSize) {
    int largestidx = index;
    int leftChildidx = getleftChild(index);
    int rightChildidx = getRightChild(index);

    if (leftChildidx < heapSize && array[leftChildidx] > array[largestidx]) {
      largestidx = leftChildidx;
    }
    if (rightChildidx < heapSize && array[rightChildidx] > array[largestidx]) {
      largestidx = rightChildidx;
    }

    if (largestidx != index) {
      int temp = array[index];
      array[index] = array[largestidx];
      array[largestidx] = temp;
      // shiftDown(largestidx, heapSize);
    }
  }

  getleftChild(int index) => (2 * index) + 1;
  getRightChild(int index) => (2 * index) + 2;
  display() => print(array);
}

void main(List<String> args) {
  List<int> elements = [10, 5, 25, 3, 30, 22, 12];
  Heap heap = Heap(elements);

  heap.heapSort();
  heap.display();
}
