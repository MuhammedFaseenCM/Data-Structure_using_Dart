class QuickSort {
  int partition(List<int> array, int start, int end) {
    int pivot = array[end];
    int j = start - 1;
    for (var i = start; i <= end - 1; i++) {
      if (array[i] < pivot) {
        j++;
        int t = array[j];
        array[j] = array[i];
        array[i] = t;
      }
    }
    int t = array[j + 1];
    array[j + 1] = array[end];
    array[end] = t;

    return (j + 1);
  }

  Future<void> quickSort(List<int> array, int start, int end) async {
    if (start < end) {
      int p = partition(array, start, end);
      quickSort(array, start, p - 1);
      quickSort(array, p + 1, end);
    }
  }
}

void main(List<String> args) async {
  QuickSort quickSort = QuickSort();
  List<int> array = [41, 30, 22, 14, 10, 7, 5, 2];
  print(array);
  await quickSort.quickSort(array, 0, array.length - 1);

  print(array);
}
