class QuickSort {
  void quickSort(List<int> array) {
    int pivot = array[array.length - 1];
    int left = array[0];
    int end = array.length - 1;
    int j = left - 1;
    for (var i = left; i < end - 1; i++) {
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
  }
}
