void main() {
  List<int> arr = [12, 11, 13, 5, 6, 7];
  print('Original array: $arr');
  HeapSort heapSort = HeapSort(arr);
  heapSort.heapSort(arr);

  print('Sorted array: $arr');
}

class HeapSort {
  late List<int> heap;
  HeapSort(this.heap);

  HeapSort.heapify(List<int> heap) {
    buildHeap(heap);
  }

  buildHeap(List<int> array) {
    heap = array;
    for (var i = parent(heap.length - 1); i >= 0; i--) {
      heapify(array,array.length,i);
    }
  }

  heapSort(List<int> arr) {
    final int n = arr.length;

    ///
    // Build heap (rearrange array)
    for (int i = parent(n - 1); i >= 0; i--) {
      print(arr);
      heapify(arr, n, i);
    }
    // print("$arr  --------\n");

    // One by one extract an element from heap
    for (int i = n - 1; i >= 0; i--) {
      // Move current root to end
      int temp = arr[0];
      arr[0] = arr[i];
      arr[i] = temp;

      // call max heapify on the reduced heap
      heapify(arr, i, 0);
      print(arr);
    }
  }

  // shiftDown(int currentIndex) {
  //   int endIndex = heap.length - 1;
  //   int leftIndex = leftChild(currentIndex);
  //   while (leftIndex <= endIndex) {
  //     int rightIndex = rightChild(currentIndex);
  //     int indexToShift;
  //     if (rightIndex <= endIndex && heap[rightIndex] > heap[leftIndex]) {
  //       indexToShift = rightIndex;
  //     } else {
  //       indexToShift = leftIndex;
  //     }

  //     if (heap[currentIndex] < heap[indexToShift]) {
  //       int temp = heap[currentIndex];
  //       heap[currentIndex] = heap[indexToShift];
  //       heap[indexToShift] = temp;
  //       currentIndex = indexToShift;
  //       leftIndex = leftChild(currentIndex);
  //     } else {
  //       return;
  //     }
  //   }
  // }

  parent(int i) {
    return (i - 1) ~/ 2;
  }

  leftChild(int i) {
    return (i * 2) + 1;
  }

  rightChild(int i) {
    return (i * 2) + 2;
  }

  display() {
    for (var i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }
}

//// 6/2 -1 = 2
/// heapify(arr,6,2)
/// heapify(arr,6,1)

///heapify(arr,6,2)                      heapify(arr,6,1)           heapify(arr,6,0)
///largest = 2                             largest =1               largest = 0
///leftChild = 2*2+1 = 5                 leftChild = 3              left = 1
///rightChild = 2*2+2=6                   rightChild = 4             right = 2
///5<6 && 7>11  wrong                     3<6 && 5>11 wrong          1<6 && 11>12 wrong
////// 6<6 wrong                          4<6 &&  6>11      wrong    [2<6  && 13>12 right   {
///                                                                    largest = right =2
///                                                                     if(2!=0){
///                                                                         swap = [13,12,11,5,6,7]
///                                                                         }
///                                                                       heapify(arr,6,2)
///                                                                       largest = 2
///                                                                       left = 5
///                                                                         right= 6
///                                                                        5<6 && 6>7 wrong
///                                                                        6<6 wrong
void heapify(List<int> arr, int n, int i) {
  int largest = i; // Initialize largest as root
  int leftChild = 2 * i + 1;
  int rightChild = 2 * i + 2;

  // If left child is smaller than root
  if (leftChild < n && arr[leftChild] > arr[largest]) {
    largest = leftChild;
  }

  // If right child is larger than largest so far
  if (rightChild < n && arr[rightChild] > arr[largest]) {
    largest = rightChild;
  }

  // If largest is not root
  if (largest != i) {
    int swap = arr[i];
    arr[i] = arr[largest];
    arr[largest] = swap;

    // Recursively heapify the affected sub-tree
    heapify(arr, n, largest);
  }
}

heapifyPr(List<int> arr, int length, int currentIndex) {
  int largest = currentIndex;

  int leftChild = (2 * currentIndex) + 1;
  int rightChild = (2 * currentIndex) + 2;

  if (leftChild < length && arr[leftChild] > arr[currentIndex]) {
    largest = leftChild;
  }

  if (rightChild < length && arr[rightChild] > arr[largest]) {
    largest = rightChild;
  }

  if (largest != currentIndex) {
    int temp = arr[largest];
    arr[largest] = arr[currentIndex];
    arr[currentIndex] = temp;
    heapifyPr(arr, length, currentIndex);
  }
}
