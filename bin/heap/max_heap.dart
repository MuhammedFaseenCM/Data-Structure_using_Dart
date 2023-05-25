import '../sorting/heap_sort.dart';

void main() {
  MaxHeap maxHeap = MaxHeap.heapify([6, 8, 2]);

  maxHeap.display();
  print("--------------");
  maxHeap.insert(1);
  maxHeap.insert(5);
  maxHeap.insert(15);
  maxHeap.remove();
  maxHeap.display();
}

class MaxHeap {
  late List<int> heap;
  MaxHeap(this.heap);

  MaxHeap.heapify(List<int> heap) {
    buildHeap(heap);
   
  }

  void buildHeap(List<int> array) {
    heap = array;
    for (var i = parent(heap.length - 1); i >= 0; i--) {
      heapifyPr(heap,heap.length,i);
    }
  }

  insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  shiftUp(int currentIndex) {
    int parentIndex = parent(currentIndex);
    while (currentIndex > 0 && heap[parentIndex] < heap[currentIndex]) {
      int temp = heap[currentIndex];
      heap[currentIndex] = heap[parentIndex];
      heap[parentIndex] = temp;
      currentIndex = parentIndex;
      parentIndex = parent(currentIndex);
    }
  }
  remove() {
    int temp = heap[0];
    heap[0] = heap[heap.length - 1];
    heap[heap.length - 1] = temp;
    print("\n\n ${heap[heap.length - 1]} **\n\n");
    heap.removeAt(heap.length - 1);
    print(heap);
    heapify(heap, heap.length,0);
  }

  // void shiftDown(int currentIndex) {
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

  int parent(int i) {
    return (i - 1) ~/ 2;
  }

  int leftChild(int i) {
    return (i * 2) + 1;
  }

  int rightChild(int i) {
    return (i * 2) + 2;
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
