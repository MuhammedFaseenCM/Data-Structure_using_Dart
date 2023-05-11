class RecursiveBubbleSort {
  List<int> array = [1, 2, 4, 5, 3];
  void swap(i, j) {
    int temp = i;
    i = j;
    j = temp;
  }

  void bubbleSort(List<int> array, int length) {
    if (length == 1) {
      return;
    }

    int count = 0;
    for (var i = 0; i < length - 1; i++) {
      if (array[i] > array[i + 1]) {
        int temp = array[i];
        array[i] = array[i + 1];
        array[i + 1] = temp;
        
        count++;
      }
    }

    if (count == 0) {
      return;
    }

    bubbleSort(array, length - 1);
  }
}

void main(List<String> args) {
  RecursiveBubbleSort recursiveBubbleSort = RecursiveBubbleSort();

  recursiveBubbleSort.bubbleSort(
      recursiveBubbleSort.array, recursiveBubbleSort.array.length);

  print(recursiveBubbleSort.array);
}
