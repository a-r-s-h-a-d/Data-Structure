void main() {
  List<int> array = [12, 11, 13, 5, 6, 7];
  List<int> result = mergeSort(array);

  print(result);
}

List<int> mergeSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }

  int middleIndex = (array.length / 2).floor();

  List<int> leftArray = mergeSort(array.sublist(0, middleIndex));
  List<int> rightArray = mergeSort(array.sublist(middleIndex));

  return mergeArray(leftArray, rightArray);
}

List<int> mergeArray(List<int> leftArray, List<int> rightArray) {
  List<int> result = [];
  int right = 0;
  int left = 0;

  while (left < leftArray.length && right < rightArray.length) {
    if (leftArray[left] <= rightArray[right]) {
      result.add(leftArray[left]);
      left++;
    } else {
      result.add(rightArray[right]);
      right++;
    }
  }

  while (left < leftArray.length) {
    result.add(leftArray[left]);
    left++;
  }

  while (right < rightArray.length) {
    result.add(rightArray[right]);
    right++;
  }

  return result;
}


/*
Input--->[11, 12, 13, 5, 6, 7]
Output-->[5, 6, 7, 11, 12, 13]
*/