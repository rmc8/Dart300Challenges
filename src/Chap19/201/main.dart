void main() {
  var num = 5;
  switch (num % 10) {
    case >= 0 && < 5:
      print("切り捨て");
      break;
    case >= 5:
      print("切り上げ");
      break;
  }
}
