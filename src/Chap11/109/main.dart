void main() {
  List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> result = numList.map((element) => element * 2).toList();
  print(result);
}
