void main() {
  var numList = [1, 2, 3, 4, 5];
  var [a, b, ...c] = numList;
  print(a);
  print(b);
  print(c);
}
