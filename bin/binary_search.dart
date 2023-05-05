class BinarySearch {
  List array = [5, 4, 6, 7, 1, 3, 2, 9];

  num binarySearch(int searchItem) {
    array.sort();

    print("Sorted array $array");
    int start = 0;
    int end = array.length - 1;
    // int middle = array.length ~/ 2;
    while (start <= end) {
      int middle = (start + end) ~/ 2;
      if (array[middle] == searchItem) {
        return middle;
      } else if (array[middle] > searchItem) {    
        end = middle - 1;
      } else {
        start = middle + 1;
      }
    }
    return -1;
  }
}
