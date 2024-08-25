void main() {
  List<int> numList = [1, 1, 1, 2, 2, 3, 4, 5, 5, 6, 7, 7, 7];
  Set<int> numSet = numList.toSet();
  assert(numList.length > numSet.length);
  print(numSet);
}
