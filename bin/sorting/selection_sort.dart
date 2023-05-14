void main(List<String> args) {
  List<int> array = [64, 25, 22, 12, 11];
  void selectionSort(List array) {
    for (var i = 0; i < array.length-1; i++) {
      int selected = i;
      for (var j = i+1; j < array.length; j++) {
        if (array[j] < array[selected]) {
          selected = j;

          int temp = array[i];
          array[i] = array[selected];
          array[selected] = temp;
        }
      }
    }
  }

  print(array);
  selectionSort(array);
  print(array);
}


