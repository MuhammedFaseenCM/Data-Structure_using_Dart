void main() {
  MinHeap minHeap = MinHeap.heapify([6, 2, 8]);

  minHeap.display();
  print("--------------");
  minHeap.insert(1);
  minHeap.insert(5);
  minHeap.insert(15);
  minHeap.display();
  print("--------------");
  minHeap.remove();
  minHeap.remove();
  minHeap.remove();
  minHeap.remove();
  minHeap.remove();
  minHeap.remove();
  minHeap.remove();
  minHeap.display();
}

class MinHeap {
  late List<int> heap;

  MinHeap(this.heap);

  MinHeap.heapify(List<int> heap) {
    buildHeap(heap);
  }

  void buildHeap(List<int> array) {
    heap = array;
    for (var i = parent(heap.length - 1); i >= 0; i--) {
      heapify(heap, heap.length, i);
    }
  }

  insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  int? peek() {
    if (heap.isEmpty) {
      return null;
    }
    return heap[0];
  }

  // void shiftDown(int crntIdx) {
  //   int endIdx = heap.length - 1;
  //   int leftIndex = leftChild(crntIdx);
  //   while (leftIndex <= endIdx) {
  //     int rightIndex = rightChild(crntIdx);
  //     int indexToShift;
  //     if (rightIndex <= endIdx && heap[rightIndex] < heap[leftIndex]) {
  //       indexToShift = rightIndex;
  //     } else {
  //       indexToShift = leftIndex;
  //     }

  //     if (heap[crntIdx] > heap[indexToShift]) {
  //       int temp = heap[crntIdx];
  //       heap[crntIdx] = heap[indexToShift];
  //       heap[indexToShift] = temp;
  //       crntIdx = indexToShift;
  //       leftIndex = leftChild(crntIdx);
  //     } else {
  //       return;
  //     }
  //   }
  // }

    heapify(List<int> arr, int length, int currentIdx) {
    int smallest = currentIdx;
    int leftIdx = (2 * currentIdx) + 1;
    int rightIdx = (2 * currentIdx) + 2;

    if (leftIdx < length && arr[leftIdx] < arr[currentIdx]) {
      smallest = leftIdx;
    }

    if (rightIdx < length && arr[rightIdx] < arr[currentIdx]) {
      smallest = rightIdx;
    }

    if (smallest != currentIdx) {
      int temp = arr[currentIdx];
      arr[currentIdx] = arr[smallest];
      arr[smallest] = temp;

      heapify(arr, length, currentIdx);
    }
  }

  shiftUp(int currentIndex) {
    int parentIndex = parent(currentIndex);
    while (currentIndex > 0 && heap[parentIndex] > heap[currentIndex]) {
      int temp = heap[currentIndex];
      heap[currentIndex] = heap[parentIndex];
      heap[parentIndex] = temp;
      currentIndex = parentIndex;
      parentIndex = parent(currentIndex);
    }
  }

  int parent(int i) {
    return (i - 1) ~/ 2;
  }

  int leftChild(int i) {
    return (i * 2) + 1;
  }

  int rightChild(int i) {
    return (i * 2) + 2;
  }

  void remove() {
    if (heap.isEmpty) {
      print("Heap is empty");
      return;
    }
    int temp = heap[0];
    heap[0] = heap[heap.length - 1];
    heap[heap.length - 1] = temp;

    heap.removeAt(heap.length - 1);

    heapify(heap, heap.length, 0);
  }

  display() {
    if (heap.isEmpty) {
      print("Empty array");
      return;
    }
    for (var i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }
}
