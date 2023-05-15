class MergeSort {
  List<int> mergeSort(List<int> array) {
    if (array.length < 2) {
      return array;
    }
    int mid = array.length ~/ 2;

    List<int> firstHalf = array.sublist(0, mid);
    List<int> lastHalf = array.sublist(mid, array.length);

    return merge(mergeSort(firstHalf), mergeSort(lastHalf));
  }

  List<int> merge(List<int> firstHalf, List<int> lastHalf) {
    List sort = [];

    while (firstHalf.isNotEmpty && lastHalf.isNotEmpty) {
      if (firstHalf[0] > lastHalf[0]) {
        sort.add(lastHalf.removeAt(0));
      } else {
        sort.add(firstHalf.removeAt(0));
      }
    }
    return [...sort, ...firstHalf, ...lastHalf];
  }
}

void main(List<String> args) {
  MergeSort mergeSort = MergeSort();
  List<int> array = [30, 2, 14, 22, 41, 5, 7, 10];
  print("UNSORTED ARRAY: $array");
  List<int> sortedArray = mergeSort.mergeSort(array);

  print("SORTED ARRAY :  $sortedArray");
}
