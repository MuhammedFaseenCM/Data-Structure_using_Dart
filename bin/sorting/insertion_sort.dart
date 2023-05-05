class InsertionSort {
  void sort(List<int> array) {
    for (var i = 1; i < array.length; i++) {
      int element = array[i];
      int j = i - 1;
      while (j >= 0 && array[j] > element) {
        print(i);
        print(array);
        array[j + 1] = array[j];
        j--;
      }
      array[j + 1] = element;
    }
  }
}

void main(List<String> args) {
  List<int> array = [41, 30, 22, 14, 10, 7, 5, 2];
  InsertionSort insertionSort = InsertionSort();
  insertionSort.sort(array);
  print("");
  print(array);

  void sum(int value) {
    print(value.bitLength);
  }

  sum(9999);
}
