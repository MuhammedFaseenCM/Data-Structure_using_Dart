import 'dart:io';

void main() {
  void pattern(int input) {
    for (var i = 1; i <= input; i++) {
      for (var j = i; j <= input; j++) {
        stdout.write(" ");
      }
      for (var k = 1; k <= i+i-1; k++) {
        if (k == 1 || k == i+i-1) {
          stdout.write("*");
        } else {
          stdout.write("_");
        }
      }
      print("");
    }
  }

  pattern(6);
}


// class Node {
//   int data;
//   Node? next;
//   Node(this.data) {
//     next = null;
//   }
// }

// class Queue {
//   Node? front;
//   Node? rear;

//   void enqueue(value) {
//     Node newNode = Node(value);
//     if (front == null) {
//       front = rear = newNode;
//       return;
//     }

//     rear!.next = newNode;
//     rear = newNode;
//   }

//   void dequeue() {
//     if (front == null) {
//       print("Empty qeue");
//       return;
//     }
//     front = front!.next;
//     if (front == null) {
//       rear = null;
//     }
//   }

//   void display() {
//     if (rear == null) {
//       print("Empty queue");
//       return;
//     }
//     Node? temp = front;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
// }

// void main(List<String> args) {
//   Queue queue = Queue();

//   queue.enqueue(2);
//   queue.enqueue(5);
//   queue.display();
// }
