class DlinkedList {
  Node? _head;
  Node? _tail;

  Node? get head => _head;
  Node? get tail => _tail;

  void addNode(int data) {
    Node newNode = Node(data);

    if (_head == null) {
      _head = newNode;
      return;
    }
    Node? last = head;
    while (last!.next != null) {
      last = last.next;
    }

    last.next = newNode;
    newNode.prev = last;
  }

  void printList() {
    Node? temp = head;

    if (temp == null) {
      print("empty");
      return;
    }
    while (temp != null) {
      print("\n$temp\n");
      temp = temp.next;
    }
  }

  void delete(int data) {
    Node? temp = head;
    Node? prev;
    Node? next;

    if (temp != null && temp.data == data) {
      _head = temp.next;
      _head!.prev = null;
      return;
    }

    while (temp != null && temp.data != data) {
      prev = temp;
      next = temp.next;
      temp = temp.next;
    }
    if (next == null) {
      print("Data not available in this linked list");
      return;
    }
    prev!.next = temp!.next;
    if (prev.prev == null) {
      print(next.prev!.data);
      next.data = next.prev!.data;
      next = null;
      return;
    }

    next.data = (temp.prev!.data);
  }

  void insertAfterData(int nextTo, int data) {
    Node? newNode = Node(data);
    Node? temp = head;

    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }
    if (temp == null) {
      print("The data is not available");
      return;
    }
    if (temp.next != null) {
      newNode.next = temp.next;
    }
    temp.next = newNode;
    newNode.prev = temp;
  }
}

class Node {
  int data;
  Node? next;
  Node? prev;

  Node(this.data) {
    next = null;
    prev = null;
  }
  @override
  toString() {
    return "${"prev: ${prev == null ? "null" : prev!.data}"}\ncurrent: $data \nnext: ${next == null ? "null" : next!.data}";
  }
}
