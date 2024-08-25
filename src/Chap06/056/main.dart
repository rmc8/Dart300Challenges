void main() {
  var numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var ans = [];
  numList.forEach((element) {
    ans.add(element % 2 == 0);
  });
  print(ans);
}
