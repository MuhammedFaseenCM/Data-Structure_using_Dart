import 'dart:io';

class QuickSort {
  int partition(List<int> array, int start, int end) {
    int pivot = array[end];
    int j = start - 1;
    for (var i = start; i <= end - 1; i++) {
      if (array[i] < pivot) {
        j++;

        swap(array, j, i);
      }
    }

    swap(array, j + 1, end);

    return (j + 1);
  }

  void quickSort(List<int> array, int start, int end) {
    if (start >= end) {
      return;
    }

    int p = partition(array, start, end);

    quickSort(array, start, p - 1);
    quickSort(array, p + 1, end);
  }

  void swap(List<int> array, i, j) {
    int temp = array[i];
    array[i] = array[j];
    array[j] = temp;
  }
}

void main() {
  QuickSortPractice quickSort = QuickSortPractice();
  List<int> array = [14, 10, 7, 5, 2, 41, 30, 22];
  print(array);
  quickSort.quickSort(array, 0, array.length - 1);

  print(array);


}

class QuickSortPractice {
  void swap(List<int> array, i, j) {
    int temp = array[i];
    array[i] = array[j];
    array[j] = temp;
  }

  int partition(List<int> array, start, end) {
    int pivot = array[end];
    int i = start - 1;

    for (var j = start; j <= end - 1; j++) {
      if (array[j] < pivot) {
        i++;
        swap(array, i, j);
      }
    }
    swap(array, i + 1, end);
    return (i + 1);
  }

  void quickSort(List<int> array, start, end) {
    if (start < end) {
      int pi = partition(array, start, end);

      quickSort(array, start, pi - 1);
      quickSort(array, pi + 1, end);
    }
  }
}

int partition(List<int> array, start, end) {
  int pivot = array[end];

  int i = start - 1;

  for (var j = start; j <= end - 1; j++) {
    if (array[j] < pivot) {
      i++;
      int temp = array[i];
      array[i] = array[j];
      array[j] = temp;
    }
  }

  int temp = array[i + 1];
  array[i + 1] = array[end];
  array[end] = temp;

  return (i + 1);
}

void quickSort(List<int> array, start, end) {
  if (start < end) {
    int pi = partition(array, start, end);
    quickSort(array, start, pi - 1);
    quickSort(array, pi + 1, end);
  }
}
