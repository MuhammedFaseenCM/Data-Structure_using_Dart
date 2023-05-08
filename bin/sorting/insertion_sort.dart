class InsertionSort {
  void sort(List<int> array) {
    for (var i = 1; i < array.length; i++) {
      int element = array[i];
      int j = i - 1;
      while (j >= 0 && array[j] > element) {
        array[j + 1] = array[j];
        j--;
      }
      array[j + 1] = element;
    }
  }
}

void main(List<String> args) {
  List<int> array = [41, 30, 22, 14, 10, 7, 5, 2];
  InsertionSortPractice insertionSort = InsertionSortPractice();
  insertionSort.insertionSort(array);
  print("");
  print(array);
}

class InsertionSortPractice {
  void insertionSort(List<int> array) {
    for (var i = 1; i < array.length; i++) {
      int element = array[i];
      int j = i - 1;

      while (j >= 0 && array[j] > element) {
        array[j + 1] = array[j];
        j--;
      }

      array[j + 1] = element;
   
    }
  }
}
