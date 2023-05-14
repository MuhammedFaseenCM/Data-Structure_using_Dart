class BubbleSort {
  List<int> array = [5,4,3,2,1];
  void bubbleSorting(List<int> array) {
    bool noSwap;
    for (var i = 0; i < array.length - 1; i++) {
      noSwap = true;
      for (var j = 0; j < array.length - i - 1; j++) {
        if (array[j] > array[j + 1]) {
          int temp = array[j];
          array[j] = array[j + 1];
          array[j + 1] = temp;
          noSwap = false;
        }
      }
      print(array);
      if (noSwap) {
        break;
      }
    }
  }
}

void main(List<String> args) {
  BubbleSort bubbleSort = BubbleSort();

  bubbleSort.bubbleSorting(bubbleSort.array);

  print(bubbleSort.array);
  // List<int> leftRigthDifference(List<int> nums) {
  //   List<int> leftArray = [];
  //   List<int> rightArray = [];
  //   int leftSum = 0;
  //   int rightSum = 0;
  //   for (int i = 0; i < nums.length; i++) {
  //     leftSum += (i != 0 ? nums[i - 1] : 0);
  //     leftArray.add(leftSum);
  //   }
  //   for (int i = nums.length; i > 0; i--) {
  //     rightSum += (i != nums.length ? nums[i] : 0);
  //     rightArray.add(rightSum);
  //   }
  //   List<int> rev = rightArray.reversed.toList();

  //   for (var i = 0; i < nums.length; i++) {
  //     nums[i] = (leftArray[i] - rev[i]).abs();
  //   }
  //   return nums;
  // }

  // print(leftRigthDifference([10, 4, 8, 3]));
}
