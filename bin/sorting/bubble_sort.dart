class BubbleSort {
  List<int> array = [30, 2, 14, 22, 41, 5, 7, 10];

  void bubbleSorting(List<int> array) {
    for (var i = 0; i < array.length; i++) {
      for (var j = 0; j < array.length; j++) {
        if (array[i] < array[j]) {
          int temp = array[i];
          array[i] = array[j];
          array[j] = temp;
        }
      }
    }
  }
}

void main(List<String> args) {
  BubbleSort bubbleSort = BubbleSort();

//
//bubbleSort.bubbleSorting(bubbleSort.array);

  //print(bubbleSort.array);
  List<int> leftRigthDifference(List<int> nums) {
    List<int> leftArray = [];
    List<int> rightArray = [];
    int leftSum = 0;
    int rightSum = 0;
    for (int i = 0; i < nums.length; i++) {
      leftSum += (i != 0 ? nums[i - 1] : 0);
      leftArray.add(leftSum);
    }
    for (int i = nums.length; i > 0; i--) {
      rightSum += (i != nums.length ? nums[i] : 0);
      rightArray.add(rightSum);
    }
    List<int> rev = rightArray.reversed.toList();

    for (var i = 0; i < nums.length; i++) {
      nums[i] = (leftArray[i] - rev[i]).abs();
    }
    return nums;
  }

  print(leftRigthDifference([10, 4, 8, 3]));
}
