class StackWithArray {
  List<List<int?>> array = [];

  void push(int value) {
    if (array.isEmpty) {
      array.add([value, null]);
      return;
    }
    int length = array.length - 1;

    array[length][1] = value;
    array.add([value, null]);
  }

  void pop() {
    if (array.isEmpty) {
      print("Stack underflow");
      return;
    }
    array[array.length - 2][1] = null;
    array.length--;
  }
}

void main(List<String> args) {
  StackWithArray stack = StackWithArray();

  stack.push(2);
  stack.push(3);
  stack.push(55);
  stack.pop();

  print(stack.array);
   stack.push(56);
  stack.push(15);
  stack.push(6);
 // stack.pop();

  print(stack.array);
}
