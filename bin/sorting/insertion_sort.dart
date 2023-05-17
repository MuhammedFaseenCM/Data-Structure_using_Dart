class InsertionSort {
  void insertionSort(List array) {
    for (var i = 1; i < array.length; i++) {
      int smallest = array[i];
      int j = i - 1;
      while (j >= 0&& array[j] > smallest) {
        array[j + 1] = array[j];
        j--;
      }
      array[j + 1] = smallest;
    }
  }
}//1 2 5 4

void main(List<String> args) {
  List<int> array = [41, 30, 22, 14, 10, 7, 5, 2];
  InsertionSort insertionSort = InsertionSort();

  insertionSort.insertionSort(array);

  print("");
  print(array);
}


