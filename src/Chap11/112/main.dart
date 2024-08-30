Iterable<int> fib() sync* {
  var (a, b) = (0, 1);
  while (true) {
    yield a;
    (a, b) = (b, a + b);
  }
}

void main() {
  fib().take(10).forEach(print);
}
