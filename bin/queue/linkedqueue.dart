class Node {
  int data;
  Node? next;
  Node(this.data) {
    
    next = null;
  }
}

class Queue {
  Node? top;

  void display() {
    if (top == null) {
      print("Queue is empty");
      return;
    }
    Node? temp = top;

    while (temp != null) {
      print(temp.data);

      temp = temp.next;
    }
  }

  void enqueue(int data) {
    Node newnode = Node(data);

    if (top == null) {
      top = newnode;
      return;
    }

    Node? temp = top;
    while (temp!.next != null) {
      temp = temp.next;
    }

    temp.next = newnode;
  }

  void dequeue() {
    if (top == null) {
      print("Queue is empty");
      return;
    }

    top = top!.next;
  }
}


void main() {
  Queue queue = Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);
  queue.enqueue(6);
  queue.enqueue(7);
  // queue.dequeue();
  //queue.display();
  queue.dequeue();
  queue.display();


}
