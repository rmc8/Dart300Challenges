bool isOdd(int num) {
  return num % 2 == 1;
}

void main() {
  for (var i = 1; i <= 20; i++) {
    if (isOdd(i)) {
      print("${i}: Odd");
    } else {
      print("${i}: Even");
    }
  }
}
