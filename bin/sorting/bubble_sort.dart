class BubbleSort {
  List<int> array = [30, 2, 14, 22, 41, 5, 7, 10];

  void bubbleSorting(List<int> array) {
    for (var i = 0; i < array.length; i++) {
      for (var j = 0; j < array.length; j++) {
        if (array[i] < array[j]) {
          int temp = array[i];
          array[i] = array[j];
          array[j] = temp;
        }
      }
    }
  }
}

void main(List<String> args) {
  BubbleSort bubbleSort = BubbleSort();

  bubbleSort.bubbleSorting(bubbleSort.array);

  print(bubbleSort.array);
}
