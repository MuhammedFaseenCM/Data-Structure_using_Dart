import 'dart:ffi';

class LinearSearch {
  int linearSearch(List<int> array, int target, int index) {
    if (array.length == index) {
      return -1;
    }

    if (target == array[index]) {
      return index + 1;
    }

    return linearSearch(array, target, index + 1);
  }
}

void main(List<String> args) {
  List<int> array = [3, 4, 3, 15, 2, 5, 6, 10];
  LinearSearch linearSearch = LinearSearch();

  int result = linearSearch.linearSearch(array, 10, 0);

  print(" ${result==-1?"Target is not available":"Target position : $result"}");
}
