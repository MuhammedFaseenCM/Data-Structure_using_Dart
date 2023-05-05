int singleDigitSum(int number) {
  if (number < 10) {
    return number;
  }

  int first = number ~/ 10;
  int last = number % 10;

  return singleDigitSum(last + singleDigitSum(first));
}

void main() {
  print(singleDigitSum(55));

}
