void main() {
  List<int> array = [7, 2, 1, 8, 6, 3, 5, 4];
  int low = 0;
  int high = array.length - 1;
  List<int> result = quickSort(array, low, high)!;
  print(result);
}

List<int>? quickSort(List<int> array, int low, int high) {
  if (low < high) {
    int pi = partition(array, low, high);

    quickSort(array, low, pi - 1);
    quickSort(array, pi + 1, high);
  }
  return array;
}

int partition(List<int> array, int low, int high) {
  if (array.isEmpty) {
    return 0;
  }
  int pivot = array[high];
  int i = low - 1;
  for (var j = low; j < high; j++) {
    if (array[j] < pivot) {
      i++;
      swap(array, i, j);
    }
  }
  swap(array, i + 1, high);
  return i + 1;
}

void swap(List<int> array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}
