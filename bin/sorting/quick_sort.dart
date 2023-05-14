

import 'swap.dart';

class QuickSort {
  partition(List<int> array, start, end) {
    int pivot = array[end];

    int i = start - 1;

    for (var j = start; j < end; j++) {
      if (array[j] < pivot) {
        i++;
        swap(array, i, j);
      }
    }
    swap(array, i + 1, end);
    return (i + 1);
  }

  void quickSort(List<int> array, start, end) {
    if (start > end) {
      return;
    }
    int pi = partition(array, start, end);
    quickSort(array, start, pi - 1);
    quickSort(array, pi + 1, end);
  }


}

void main() {
  QuickSort quickSort = QuickSort();
  List<int> array = [14, 10, 7, 5, 2, 41, 30, 22];
  print(array);
  quickSort.quickSort(array, 0, array.length - 1);

  print(array);
}

