import 'dart:math';

void main() {
  List<int> numList = [3, 6, 7, 2, 9, 5, 1, 0, 4, 8];

  // Math
  print(numList.reduce(max));
  print(numList.reduce(min));

  // Algorithm
  int? maxNum;
  int? minNum;
  numList.forEach((element) {
    if (maxNum == null || maxNum! < element) {
      maxNum = element;
    }
    if (minNum == null || minNum! > element) {
      minNum = element;
    }
  });
  print(maxNum);
  print(minNum);
}
