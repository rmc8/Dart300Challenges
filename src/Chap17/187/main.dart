Stream<int> fib() async* {
  int a = 0;
  int b = 1;
  while (true) {
    yield a;
    (a, b) = (b, a + b);
  }
}

void main() async {
  Stream<int> stream = fib();
  await for (var i in stream) {
    print(i);
    if (i > 1000) {
      break;
    }
  }
}
