String typeCheck(num n) {
  return switch (n) {
    int() => "整数",
    double() => "小数",
  };
}

void main() {
  var intNum = 5;
  var doubleNum = 5.0;
  print(typeCheck(intNum));
  print(typeCheck(doubleNum));
}
