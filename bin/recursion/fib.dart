void main() {
  int fibonacci = fib(3);
  print(fibonacci);
}

int fib(int n) {
  if (n > 1) {

    return fib(n - 1) + fib(n - 2);
  }
  return n;
}
