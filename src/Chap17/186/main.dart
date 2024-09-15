Stream<int> num() async* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}

void main() async {
  Stream<int> stream = num();
  await for (var i in stream) {
    print(i);
  }
}
