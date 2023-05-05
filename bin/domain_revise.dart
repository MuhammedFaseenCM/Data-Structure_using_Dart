void main(List<String> args) {
  List<List<int>> input1 = [
    [1, 1, 1],
    [1, 1, 1]
  ];
  List<List<int>> input2 = [
    [0, 0, 0],
    [0, 0, 0]
  ];
  List<List<int>> result = [[],[]
    // [1, 0, 1, 0, 1, 0],
    // [0, 1, 0, 1, 0, 1]
  ];

  for (var i = 0; i < input1.length; i++) {
    for (var j = 0; j < input2[0].length; j++) {
      if (i==0) {
         result[i].add(input1[i][j]);
      result[i].add(input2[i][j]);
      }else if(i==1){
       
      result[i].add(input2[i][j]);
       result[i].add(input1[i][j]);
      }
     
    }
  }
  print(result);
}




















// class SinglyLinkedList {
//   Node? _head;
//   Node? _tail;

//   //SinglyLinkedList() {
//     //_head = null;
//     //_tail = null;
//   //}
//   Node? get head => _head;
//   Node? get tail => _tail;

//   void addNode(int data) {
//     Node newNode = Node(data);
//     if (_head == null) {
//       _head = newNode;
//       return;
//     }
//     Node? last = _head;
//     while (last!.next != null) {
//       last = last.next;
//     }
//     last.next = newNode;
//   }

//   void printList() {
//     Node? curr = _head;
//     if (curr == null) {
//       print("Empty");
//       return;
//     }
//     while (curr != null) {
//       print(curr.data);

//       curr = curr.next;
//     }
//   }

//   void delete(int data) {
//     Node? curr = head, prev = null;

//     if (curr != null && curr.data == data) {
//       _head = curr.next;
//       return;
//     }
//     while (curr != null && curr.data != data) {
//       prev = curr;
//       curr = curr.next;
//     }
//     if (curr == null) {
//       print("Data is not in this linked list");
//       return;
//     }
//     if (curr == tail) {
//       _tail = prev;
//       _tail!.next = null;
//       return;
//     }
//     prev!.next = curr.next;
//   }

//   void insertAfterData(int nextTo, int data) {
//     Node newNode = Node(data);

//     Node? temp = head;

//     while (temp != null && temp.data != nextTo) {
//       temp = temp.next;
//     }
//     if (temp == null) {
//       return;
//     }
//     if (temp == tail) {
//       tail!.next = newNode;
//       _tail = newNode;
//       return;
//     }

//     newNode.next = temp.next;
//     temp.next = newNode;
//   }
// }

// class Node {
//   int data;
//   Node? next;
//   Node(this.data) {
//     next = null;
//   }
// }

//  https://wellfound.com/l/2yKquF