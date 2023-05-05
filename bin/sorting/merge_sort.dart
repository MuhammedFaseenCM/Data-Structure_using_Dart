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
    while (left.isNotEmpty  && right.isNotEmpty) {
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
  MergeSort mergeSort = MergeSort();
  List<int> array = [30, 2, 14, 22, 41, 5, 7, 10];
  print("UNSORTED ARRAY: $array");
  List<int> sortedArray = mergeSort.mergeSort(array);

  print(sortedArray);
}

// List<int> mergeArrays(List<int> leftSubArray, List<int> rightSubArray) {
//   List<int> array = [];
//   while (leftSubArray.length > 0 && rightSubArray.length > 0) {
//     if (leftSubArray[0] < rightSubArray[0]) {
//       array.add(leftSubArray.removeAt(0));
//     } else {
//       array.add(rightSubArray.removeAt(0));
//     }
//   }
//   return [...array, ...leftSubArray, ...rightSubArray];
// }

// List<int> mergeSort(List<int> unsortedArray) {
//   int middleIndex = (unsortedArray.length / 2).floor();
//   if (unsortedArray.length < 2) {
//     return unsortedArray;
//   }
//   List<int> leftSubArray = unsortedArray.sublist(0, middleIndex);
//   return mergeArrays(mergeSort(leftSubArray), mergeSort(unsortedArray.sublist(middleIndex)));
// }

// void main() {
//   List<int> unsortedArray = [39, 28, 44, 4, 10, 83, 11];
//   List<int> sortedArray = mergeSort(unsortedArray);
//   print(sortedArray); // [4, 10, 11, 28, 39, 44, 83]
// }
