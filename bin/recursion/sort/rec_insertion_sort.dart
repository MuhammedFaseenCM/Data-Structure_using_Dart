
void main() {
  List<int> array = [64, 25, 12, 22, 65,1];

  void recInsertion(array, int i) {
    int element = array[i];
    int j = i - 1;

    while (j >= 0 && array[j] > element) {
      print(element);
      // element = array[j];
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = element;
    if (i == array.length - 1) {
      print(i);
      return;
    }
    recInsertion(array, i + 1);
  }

  print(array);
  recSelection(array, 0);
  print(array);
}

void swap(i, j) {
  int temp = i;
  i = j;
  j = temp;
}

void recSelection(array, i) {
  if (i == array.length) {
    return;
  }

  var largest = array[i];
  for (var j = 0; j < array.length; j++) {
    if (array[j] >
     largest) {
      largest = array[i];

      int temp = array[j];
      array[j] = largest;
      array[i] = temp;
      print(array);
    }
  }
  recSelection(array, i + 1);
}
