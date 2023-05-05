void main(List<String> args) {
  List<int> array = [2, 5, 7, 10, 14, 22, 30, 41];
  void selectionSort(List<int> array) {
    for (var i = 0; i < array.length - 1; i++) {
      int smallest = array[i];
      for (var j = i + 1; j < array.length; j++) {
        if (smallest > array[j]) {
          smallest = array[j];

          int temp = array[i];
          array[i] = smallest;
          array[j] = temp;
        }
      }
      print(array);
    }
  }

  selectionSort(array);
  print(array);
}
