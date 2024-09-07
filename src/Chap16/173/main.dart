void main() {
  List<int>? numListA;
  var numListB = [...?numListA, 1, 2, 3];
  numListA = [1, 2, 3];
  var numListC = [...?numListA, 4, 5, 6];
  print(numListB);
  print(numListC);
}
