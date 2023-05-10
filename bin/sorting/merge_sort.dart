class MergeSort {
  List<int> mergeSort(List<int> array) {
    if (array.length < 2) {
      return array;
    }
    int mid = (array.length / 2).floor();
    List<int> left = [];
    for (var i = 0; i < mid; i++) {
      left.add(array[i]);
    }
    List<int> right = [];
    for (var i = mid; i < array.length; i++) {
      right.add(array[i]);
    }
    return merge(mergeSort(left), mergeSort(right));
  }

  List<int> merge(List<int> left, List<int> right) {
    List<int> sort = [];
    while (left.isNotEmpty && right.isNotEmpty) {
      if (left[0] < right[0]) {
        sort.add(left.removeAt(0));
      } else {
        sort.add(right.removeAt(0));
      }
    }
    return [...sort, ...left, ...right];
  }
}

void main(List<String> args) {
  MergeSortPractice mergeSort = MergeSortPractice();
  List<int> array = [30, 2, 14, 22, 41, 5, 7, 10];
  print("UNSORTED ARRAY: $array");
  List<int> sortedArray = mergeSort.mergeSort(array);

  print(sortedArray);
}

class MergeSortPractice {
  List<int> mergeSort(List<int> array) {
    if (array.length < 2) {
      return array;
    }
    int mid = array.length ~/ 2;

    List<int> firstHalf = array.sublist(0, mid);
    List<int> lastHalf = array.sublist(mid, array.length);

    return join(mergeSort(firstHalf), mergeSort(lastHalf));
  }

  List<int> join(List<int> firstHalf, List<int> lastHalf) {
    List<int> sort = [];
    while (firstHalf.isNotEmpty && lastHalf.isNotEmpty) {
      if (firstHalf[0] < lastHalf[0]) {
        sort.add(firstHalf.removeAt(0));
      } else {
        sort.add(lastHalf.removeAt(0));
      }
    }
    return [...sort, ...firstHalf, ...lastHalf];
  }
}

List<int> join(List<int> firstHalf, List<int> secondHalf) {
  List<int> sort = [];
  while (firstHalf.isNotEmpty && secondHalf.isNotEmpty) {
    if (firstHalf[0] < secondHalf[0]) {
      sort.add(firstHalf.removeAt(0));
    } else {
      sort.add(secondHalf.removeAt(0));
    }
  }
  return [...sort, ...firstHalf, ...secondHalf];
}

List<int> mergeSort(List<int> array) {
  if (array.length < 2) {
    return array;
  }
  int mid = array.length ~/ 2;

  List<int> firstHalf = array.sublist(0, mid);
  List<int> secondHalf = array.sublist(mid, array.length);

  return join(mergeSort(firstHalf), mergeSort(secondHalf));
}
