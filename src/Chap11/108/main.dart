List<int> myMap(int Function(int) f, List<int> list) {
  List<int> res = [];
  list.forEach((element) {
    res.add(f(element));
  });
  return res;
}

void main() {
  List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> result = myMap((element) => element * 2, numList);
  print(result);
}
