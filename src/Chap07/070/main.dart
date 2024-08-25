void main() {
  List<int> numList = [1, 2, 3, 4, 5];
  bool evenCheck = numList.every((n) => n % 2 == 0);
  print(evenCheck);
}
