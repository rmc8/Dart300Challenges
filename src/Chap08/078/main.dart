void main() {
  Set<int> numSet = {3, 4, 1, 8, 6, 9, 7, 5, 2, 0};
  List<int> numList = numSet.toList();
  numList.sort();
  print(numList.toSet());
}
