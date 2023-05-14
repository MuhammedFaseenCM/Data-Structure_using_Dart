void main() {
  List<int> array = [6, 1, 450, 2, 0];

  void bubbleSort(array, length) {
    if (length <= 1) {
      return;
    }
    bool isSort = true;

    for (var i = 0; i < array.length - 1; i++) {
      if (array[i] > array[i + 1]) {
        int temp = array[i];
        array[i] = array[i + 1];
        array[i + 1] = temp;
        isSort = false;
      }
    }
    if (isSort) {
      return;
    }
    bubbleSort(array, length - 1);
    
  }
print(array);
  bubbleSort(array, array.length);
  print(array);
}
