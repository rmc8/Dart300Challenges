void main() {
  var addItem = false;
  var numListA = [
    1,
    2,
    3,
    if (addItem) ...[4, 5, 6]
  ];
  addItem = true;
  var numListB = [
    1,
    2,
    3,
    if (addItem) ...[4, 5, 6]
  ];
  print(numListA);
  print(numListB);
}
