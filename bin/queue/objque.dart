class Que {
  Map items = {};
  int tail = 0;
  int head = -1;
  // Que(this.items, this.tail, this.head);

  void enque(value) {
    head++;
    items[head] = value;
  }

  int deque() {
    int item = items[tail];
    items[tail] = null;
    tail++;
    return item;
  }

  int getSize() {
    return head - tail;
  }

  peek() {
    return items[tail];
  }

  display() {
    int rear = tail;
    while (rear != head) {
      print(items[rear]);
      rear++;
    }
    print(items[head]);
  }
}

void main(List<String> args) {
  Que que = Que();
  que.enque(5);
  que.enque(9);
  que.enque(8);
  que.enque(4);
  que.enque(6);

  que.display();
  print("deque ${que.deque()}");
  que.display();
  print("deque ${que.deque()}");
  que.display();
  print("deque ${que.deque()}");
  que.display();
  print("deque ${que.deque()}");
  que.display();
}
