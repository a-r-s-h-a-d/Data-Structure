class MaxHeap {
  List<int> array = [];
  MaxHeap([List<int> elements = const []]) {
    array.addAll(elements);
    if (array.isNotEmpty) {
      heapify();
    }
  }

  heapify() {
    int lastParentIdx = (array.length ~/ 2) - 1;
    for (int i = lastParentIdx; i >= 0; i--) {
      shifDown(i);
    }
  }

  insert(int data) {
    array.add(data);
    shiftUp(array.length - 1);
  }

  remove() {
    int lastidx = array.length - 1;
    int maxVal = array[0];
    array[0] = array[lastidx];
    array.removeAt(lastidx);
    shifDown(0);
    return maxVal;
  }

  shiftUp(int index) {
    if (index == 0) {
      return;
    }
    int parentidx = getParentIdx(index);
    if (array[index] > array[parentidx]) {
      int temp = array[index];
      array[index] = array[parentidx];
      array[parentidx] = temp;

      shiftUp(parentidx);
    }
  }

  shifDown(int index) {
    int largestidx = index;
    int leftChildidx = getLeftChildIdx(index);
    int rightChildidx = getRightChildIdx(index);

    if (leftChildidx < array.length &&
        array[leftChildidx] > array[largestidx]) {
      largestidx = leftChildidx;
    }
    if (rightChildidx < array.length &&
        array[rightChildidx] > array[largestidx]) {
      largestidx = rightChildidx;
    }

    if (largestidx != index) {
      int temp = array[largestidx];
      array[largestidx] = array[index];
      array[index] = temp;
    }
  }

  display() => print(array);
  getLeftChildIdx(int index) => (2 * index) + 1;
  getRightChildIdx(int index) => (2 * index) + 2;
  getParentIdx(int index) => ((index - 1) ~/ 2);
}

void main(List<String> args) {
  List<int> elements = [10, 5, 25, 3, 30, 22, 12];
  MaxHeap heap1 = MaxHeap(elements);
  MaxHeap heap2 = MaxHeap();

  print("heapify");
  heap1.heapify();
  heap1.display();

  print("display heap");
  heap2.insert(10);
  heap2.insert(5);
  heap2.insert(25);
  heap2.insert(3);
  heap2.insert(30);
  heap2.insert(22);
  heap2.insert(12);

  heap2.remove();
  heap2.remove();

  heap2.display();
}
