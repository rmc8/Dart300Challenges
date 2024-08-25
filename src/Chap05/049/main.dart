void main() {
  var cnt = 0;
  var a = 1;
  var b = 1;
  while (cnt < 10) {
    print(a);
    (a, b) = (b, a + b);
    cnt++;
  };
}
