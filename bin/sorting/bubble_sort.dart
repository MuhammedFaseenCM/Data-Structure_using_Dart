class BubbleSort {
  List<int> array = [1,2,3,4,5,1];
  void bubbleSorting(List array) {
    bool noSwap;
    for (var i = 0; i < array.length-1; i++) {
      noSwap = true;
      for (var j = 0; j < array.length-i-1; j++) {
        if (array[j] > array[j+1]) {
         
          int temp = array[j+1];
          array[j+1] = array[j];
          array[j] = temp;
          noSwap = false;
        }
      }
   
      if (noSwap) {
        break;
      }
    }
  }
}

void main(List<String> args) {
  BubbleSort bubbleSort = BubbleSort();

  bubbleSort.bubbleSorting(bubbleSort.array);

  print(bubbleSort.array);
}
