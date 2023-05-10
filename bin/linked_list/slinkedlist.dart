class Node {
  int data;
  Node? next;

  Node(this.data) {
    next = null;
  }
}

class SinglyLinkedList {
  Node? head;

  void addNode(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
      return;
    }
    Node? temp = head;
    while (temp!.next != null) {
      temp = temp.next;
    }

    temp.next = newNode;
  }

  void addBeginning(int data) {
    Node newNode = Node(data);
    Node? temp = head;
    if (temp == null) {
      head = newNode;
      return;
    }
    head = newNode;
    newNode.next = temp;
  }

  void displayLinkedList() {
    Node? temp = head;

    if (temp == null) {
      print("Linked list is empty");
      return;
    }
    while (temp != null) {
      print("\n${temp.data}\n");
      temp = temp.next;
    }
  }

  void insertIntoAfter(int nextTo, int data) {
    Node? newNode = Node(data);
    Node? temp = head;

    while (temp!.data != nextTo) {
      temp = temp.next;
    }
    if (temp.next == null) {
      temp.next = newNode;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }

  void delete(int data) {
    Node? temp = head;
    Node? prev;
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == null) {
      print("The data is not in the linked list");
      return;
    }
    if (temp.next == null) {
      prev!.next = null;
      return;
    }

    prev!.next = temp.next;
  }

  void sortAndDup() {
    Node? temp = head;
    Node? prev;

    while (temp!.next != null) {
      prev = temp;
      temp = temp.next;
      while (prev.data > temp!.data) {
        Node? tempo = prev.next;
        // prev = temp;
        // temp = tempo;
        prev.next = temp.next;
        temp.next = tempo;
      }
    }
  }
}

void main(List<String> args) {
  SinglyLinkedList singlyLinkedList = SinglyLinkedList();

  singlyLinkedList.addNode(2);
  singlyLinkedList.addBeginning(1);
  singlyLinkedList.insertIntoAfter(1, 3);
  singlyLinkedList.addNode(4);
  singlyLinkedList.displayLinkedList();
}
