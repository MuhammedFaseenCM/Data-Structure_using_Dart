void main(List<String> args) {
  List<int> array = [22, 30, 41, 2, 5, 7, 10, 14];
  void selectionSort(List<int> array) {
    for (var i = 0; i < array.length; i++) {
      int smallest = i;
      for (var j = 0; j < array.length; j++) {
        if (array[smallest] < array[j]) {
          smallest = j;

          int temp = array[i];
          array[i] = array[smallest];
          array[j] = temp;
        }
      }
      print(array);
    }
  }

  SelectionSort selectionSortPr = SelectionSort();
  // selectionSort(array);
  print(array);
  insertSort(array);
  print(array);
}

class SelectionSort {
  void sort(List<int> array) {
    for (var i = 0; i < array.length; i++) {
      int selected = i;
      for (var j = 0; j < array.length; j++) {
        if (array[j] > array[selected]) {
          selected = j;
          int temp = array[i];
          array[i] = array[j];
          array[selected] = temp;
        }
      }
    }
  }
}

void selecSort(List<int> array) {
  for (var i = 0; i < array.length; i++) {
    int smallest = i;

    for (var j = 0; j < array.length; j++) {
      if (array[smallest] < array[j]) {
        smallest = j;
        int temp = array[i];
        array[i] = array[smallest];
        array[j] = temp;
      }
    }
  }
}

void insertSort(List<int> array) {
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
