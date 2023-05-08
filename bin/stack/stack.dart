import 'dart:io';

class Stack {
  Node? top;

  void display() {
    Node? temp = top;

    if (temp == null) {
      print("Stack underflow");
      return;
    }

    while (temp != null) {
      print("${temp.data} ");

      temp = temp.next;
    }
  }

  void push(int data) {
    Node newnode = Node(data);

    if (top == null) {
      top = newnode;
      return;
    }

    newnode.next = top;
    top = newnode;
  }

  void pop() {
    if (top == null) {
      print("Stack underflow");
      return;
    }
    top = top!.next;
  }
}

class Node {
  int data;
  Node? next;
  Node(this.data) {
    next = null;
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stack.push(6);
  stack.push(7);
  stack.pop();
  stack.pop();
  stack.pop();
  stack.pop();
  stack.pop();
  stack.pop();
  stack.pop();

  stack.display();
}
