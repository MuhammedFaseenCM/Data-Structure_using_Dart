class Stack {
  Node? top;

  void display() {
    if (top == null) {
      print("Stack is empty");
      return;
    }
    Node? temp = top;

    while (temp != null) {
      print(temp.data);

      temp = temp.next;
    }
  }

  void push(int data) {
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

  void pop() {
    if (top == null) {
      print("Stack is empty");
      return;
    }

    Node? temp = top;
    Node? prev = top;

    while (temp!.next != null) {
      prev = temp;
      temp = temp.next;
    }

    prev!.next = null;
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
 
  stack.display();
}
