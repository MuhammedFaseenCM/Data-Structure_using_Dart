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
  minHeap.display();
}

class MinHeap {
  List<int>? heap;

  MinHeap(this.heap);

  MinHeap.heapify(List<int> heap) {
    buildHeap(heap);
  }

  void buildHeap(List<int> array) {
    heap = array;
    for (var i = parent(heap!.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  insert(int value) {
    heap!.add(value);
    shiftUp(heap!.length - 1);
  }

  int? peek() {
    if (heap == null) {
      return null;
    }
    return heap![0];
  }

  void shiftDown(int currentIndex) {
    int endIndex = heap!.length - 1;
    int leftIndex = leftChild(currentIndex);
    while (leftIndex <= endIndex) {
      int rightIndex = rightChild(currentIndex);
      int indexToShift;
      if (rightIndex <= endIndex && heap![rightIndex] < heap![leftIndex]) {
        indexToShift = rightIndex;
      } else {
        indexToShift = leftIndex;
      }

      if (heap![currentIndex] > heap![indexToShift]) {
        int temp = heap![currentIndex];
        heap![currentIndex] = heap![indexToShift];
        heap![indexToShift] = temp;
        currentIndex = indexToShift;
        leftIndex = leftChild(currentIndex);
      } else {
        return;
      }
    }
  }

  shiftUp(int currentIndex) {
    int parentIndex = parent(currentIndex);
    while (currentIndex > 0 && heap![parentIndex] > heap![currentIndex]) {
      int temp = heap![currentIndex];
      heap![currentIndex] = heap![parentIndex];
      heap![parentIndex] = temp;
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
    int temp = heap![0];
    heap![0] = heap![heap!.length - 1];
    heap![heap!.length - 1] = temp;
    print("\n\n ${heap![heap!.length - 1]} **\n\n");
    heap!.removeAt(heap!.length - 1);
    print(heap);
    shiftDown(0);
  }

  display() {
    if (heap == null) {
      print("Empty array");
      return;
    }
    for (var i = 0; i < heap!.length; i++) {
      print(heap![i]);
    }
  }
}
