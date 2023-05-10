class StackWithArray {
  List<int?> array = [];

  void push(int value) {
    array.add(value);
  }

  void pop() {
    array.removeAt(array.length - 1);
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
    print(stack.array);
    stack.pop();

    print(stack.array);
  }
}
