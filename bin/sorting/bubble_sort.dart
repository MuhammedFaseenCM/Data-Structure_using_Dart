class BubbleSort {
  List<int> array = [30, 2, 14, 22, 41, 5, 7, 10];

  void bubbleSorting(List<int> array) {
    for (var i = 1; i < array.length; i++) {
      int element = array[i];
      int j = i - 1;
      while (j >= 0 &&  array[j]>element) {
        array[j + 1] = array[j];
        j--;
      }
      array[j+1] = element;
    }
  }
}

void main(List<String> args) {
  BubbleSort bubbleSort = BubbleSort();

  bubbleSort.bubbleSorting(bubbleSort.array);

  print(bubbleSort.array);
}
