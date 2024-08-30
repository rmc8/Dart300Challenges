Iterable<int> flattenList(List<dynamic> list) sync* {
  for (var item in list) {
    if (item is List) {
      yield* flattenList(item);
    } else if (item is int) {
      yield item;
    }
  }
}

void main() {
  var numList = [
    1,
    [
      2,
      3,
      [4, 5]
    ],
    6,
    [
      7,
      [8, 9]
    ]
  ];
  for (var num in flattenList(numList)) {
    print(num);
  }
}
