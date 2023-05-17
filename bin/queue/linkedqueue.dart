import 'dart:io';

class Node {
  int data;
  Node? next;
  Node(this.data) {
    next = null;
  }
}

class Queue {
  Node? rear;
  Node? front;

  void display() {
    if (front == null) {
      print(" is empty");
      return;
    }
    Node? temp = front;

    while (temp != null) {
      stdout.write("${temp.data} ");

      temp = temp.next;
    }
  }

  void enqueue(int data) {
    Node newnode = Node(data);

    if (rear == null) {
      rear = front = newnode;
      return;
    }

    rear!.next = newnode;
    rear = newnode;
  }

  void dequeue() {
    if (front == null) {
      print("Queue is empty");
      return;
    }

    front = front!.next;
    if (front == null) {
      rear = null;
    }
  }
}

void main() {
  QueueP queue = QueueP();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);
  queue.enqueue(6);
  queue.enqueue(7);
  queue.display();
  print("");
  queue.dequeue();
  queue.dequeue();
  queue.display();
}

class QueueP {
  Node? front;
  Node? rear;

  void enqueue(value) {
    Node newNode = Node(value);

    if (front == null) {
      front = rear = newNode;
      return;
    }

    rear!.next = newNode;
    rear = newNode;
  }

  void dequeue() {
    if (front == null) {
      print("Queue is empty");
      return;
    }
    front = front!.next;

    if (front == null) {
      rear = null;
    }
  }

  void display() {
    if (front == null) {
      print("Queue is empty");
      return;
    }
    Node? temp = front;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
