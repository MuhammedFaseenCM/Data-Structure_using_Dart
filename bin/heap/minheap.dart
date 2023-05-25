main() {
  MinHeap minHeap = MinHeap.heapify([15, 2, 8, 6, 5, 15]);
  minHeap.remove();
  minHeap.insert(1);
  minHeap.display();
}

class MinHeap {
  late List<int> array;
  MinHeap.heapify(this.array) {
    buildHeap(array);
  }

  buildHeap(List<int> array) {
    for (var i = parent(array.length - 1); i >= 0; i--) {
      heapify(array, array.length, i);
    }
  }

  heapify(List<int> array, int length, int currentIdx) {
    int smallest = currentIdx;

    int leftchild = leftChild(currentIdx);
    int rightchild = rightChild(currentIdx);
    if (leftchild < length && array[leftchild] < array[smallest]) {
      smallest = leftchild;
    }
    if (rightchild < length && array[rightchild] < array[smallest]) {
      smallest = rightchild;
    }

    if (smallest != currentIdx) {
      int temp = array[smallest];
      array[smallest] = array[currentIdx];
      array[currentIdx] = temp;
      heapify(array, length, smallest);
    }
  }

  remove() {
    int temp = array[0];
    array[0] = array[array.length - 1];
    array[array.length - 1] = temp;

    array.removeAt(array.length - 1);

    heapify(array, array.length, 0);
  }

  shiftUp(int currentIdx) {
    int parentIndex = parent(currentIdx);

    while (currentIdx > 0 && array[parentIndex] > array[currentIdx]) {
      int temp = array[parentIndex];
      array[parentIndex] = array[currentIdx];
      array[currentIdx] = temp;
      currentIdx = parentIndex;
      parentIndex = parent(currentIdx);
    }
  }

  insert(int data) {
    array.add(data);
    shiftUp(array.length-1);
  }

  parent(int currentIdx) {
    return (currentIdx-1) ~/ 2;
  }

  leftChild(int currentIdx) {
    return (2 * currentIdx) + 1;
  }

  rightChild(int currentIdx) {
    return (2 * currentIdx) + 2;
  }

  display() {
    print(array);
  }
}
