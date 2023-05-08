class Queue {
  List<int> array = [];

  void enque(int data) {
    array.add(data);
  }

  void deque() {
    array.removeAt(0);
    print(array[0]);
  }

  int getSize() {
    return array.length;
  }

  void display() {
    if (array.isEmpty) {
      return;
    }
    int i = 0;
    while (i < array.length) {
      print(array[i]);
      i++;
    }
  }
}

void main() {
  Queue queue = Queue();
  queue.enque(8);
  queue.enque(5);
  queue.enque(4);
  queue.enque(7);
  queue.enque(9);

  print(queue.array);
  queue.deque();
  print(queue.array);
  queue.deque();
  print(queue.array);
  queue.display();
}
