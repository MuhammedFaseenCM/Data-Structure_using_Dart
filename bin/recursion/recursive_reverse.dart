class RecursiveReverse {
  String reverseString(String str) {
    if (str.isEmpty) {
      return str; // base case
    } else {
      print(str.substring(1) + str[0]);
      return reverseString(str.substring(1)) + str[0];
    }
  }

  int factorial(int fact) {
    if (fact <= 1) {
      return fact;
    }
    return fact * factorial(fact - 1);
  }
}

void main(List<String> args) {
  RecursiveReverse recursiveReverse = RecursiveReverse();
  //print(recursiveReverse.reverseString("Hello world"));
  print(recursiveReverse.factorial(5));
}
