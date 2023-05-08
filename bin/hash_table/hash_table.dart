class Node {
  String? key;
  int? value;
  Node? next;

  Node(this.key, this.value) {
    next = null;
  }
}

class HashTable {
  int size;
  List<Node>? table;

  HashTable(this.size) {
    table = List<Node>.filled(size, Node(null, null), growable: false);
  }

  int hash(String key) {
    int total = 0;
    for (int i = 0; i < key.length; i++) {
      total += key.codeUnitAt(i);
    }
    return total % this.size;
  }

  void set(String key, int value) {
    int index = hash(key);
    if (table![index] == Node(null, null)) {
      table![index] = Node(key, value);
    } else {
      Node current = table![index];
      while (current.next != null && current.key != key) {
        current = current.next!;
      }
      if (current.key == key) {
        current.value = value;
      } else {
        current.next = Node(key, value);
      }
    }
  }

  int? get(String key) {
    int index = hash(key);
    Node current = table![index];
    while (current != null && current.key != key) {
      current = current.next!;
    }
    return current.value;
  }

  void display() {
    for (int i = 0; i < size; i++) {
      if (table![i] != Node(null, null)) {
        Node current = table![i];
        while (current.next != null) {
          print("${current.key}: ${current.value}");
          current = current.next!;
        }
      }
    }
  }
}

void main() {
  HashTable ht =  HashTable(4);
  ht.set("apple", 1);
  ht.set("banana", 2);
  ht.set("orange", 3);
  ht.set("lemon", 4);
  ht.display();
  print(ht.get("banana"));
  print(ht.table);
}
