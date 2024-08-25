void main() {
  Set<int> numA = {1, 2, 3, 4, 5, 6};
  Set<int> numB = {1, 3, 5, 7, 9, 11};
  Set<int> numC = numA.union(numB);
  print(numC);
}
