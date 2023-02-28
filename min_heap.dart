class MinHeap {
  List<int> array = [];
  MinHeap([List<int> elements = const []]) {
    array.addAll(elements);
    if (array.isNotEmpty) {
      heapify();
    }
  }

  insert(int data) {
    array.add(data);
    shiftUp(array.length - 1);
  }

  remove() {
    int minVal = array[0];
    int lastindx = array.length - 1;
    array[0] = array[lastindx];
    array.removeAt(lastindx);
    shiftDown(0);
    return minVal;
  }

  heapify() {
    int lastParentIdx = (array.length ~/ 2) - 1;

    for (int i = lastParentIdx; i >= 0; i--) {
      shiftDown(i);
    }
  }

  getleftChildIdx(int index) => (2 * index) + 1;

  getrightChildIdx(int index) => (2 * index) + 2;

  getParentIdx(int index) => (index - 1) ~/ 2;

  shiftUp(int index) {
    if (index == 0) {
      return;
    }
    int parentIdx = getParentIdx(index);
    if (array[index] < array[parentIdx]) {
      int temp = array[index];
      array[index] = array[parentIdx];
      array[parentIdx] = temp;

      shiftUp(parentIdx);
    }
  }

  shiftDown(int index) {
    int leftChildIdx = getleftChildIdx(index);
    int rightChildIdx = getrightChildIdx(index);
    int smallestIdx = index;

    if (leftChildIdx < array.length &&
        array[leftChildIdx] < array[smallestIdx]) {
      smallestIdx = leftChildIdx;
    }

    if (rightChildIdx < array.length &&
        array[rightChildIdx] < array[smallestIdx]) {
      smallestIdx = rightChildIdx;
    }

    if (smallestIdx != index) {
      int temp = array[smallestIdx];
      array[smallestIdx] = array[index];
      array[index] = temp;
    }
  }

  void display() => print(array);
}

void main(List<String> args) {
  List<int> elements = [10, 5, 25, 3, 30, 22, 12];
  MinHeap heap1 = MinHeap(elements);
  MinHeap heap2 = MinHeap();
  print("heapify");
  heap1.heapify();
  heap1.display();
  //insertion
  heap2.insert(10);
  heap2.insert(5);
  heap2.insert(25);
  heap2.insert(3);
  heap2.insert(30);
  heap2.insert(22);
  heap2.insert(12);

  print("removed item:" + heap2.remove().toString());
  print("removed item:" + heap2.remove().toString());

  print("array");
  heap2.display();
}
