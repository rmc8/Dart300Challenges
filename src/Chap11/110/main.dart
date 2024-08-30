void main() {
  List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  numList.sort((a, b) => b - a);
  print(numList);
}
