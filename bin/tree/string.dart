String str = "22*1+5+8";

sum(String str) {
  int length = str.length;
  int sum = int.parse(str[0]);

  for (var j = 0; j < length; j++) {
    if (int.tryParse(str[j]) == null) {
      if (str[j] == "+") {
        sum += int.parse(generateInt(length));
      } else if (str[j] == "*") {
        sum *= int.parse(str[j + 1]);
      } else if (str[j] == "/") {
        sum ~/= int.parse(str[j + 1]);
      } else if (str[j] == "-") {
        sum -= int.parse(str[j + 1]);
      }
    }
  }

  return sum;
}

int i = 0;
generateInt( int length) {
  String val = '';

  while (int.tryParse(str[i]) != null) {
    val += str[i];
    if (i == length) {
      return;
    }
    i++;
  }
  return val;
}

void main() {
  print(sum(str));
}
