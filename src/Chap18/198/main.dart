Stream<T> generateStream<T>(Iterable<T> items) async* {
  for (var item in items) {
    await Future.delayed(const Duration(milliseconds: 100));
    yield item;
  }
}

void main() async {
  var intStream = generateStream<int>([1, 2, 3, 4, 5]);
  await for (var i in intStream) {
    print(i);
  }

  var stringStream = generateStream<String>(['A', 'B', 'C', 'D', 'E']);
  await for (var s in stringStream) {
    print(s);
  }
}
