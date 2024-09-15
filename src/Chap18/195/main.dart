List<T> sortList<T>(List<T> list, int Function(T, T) compare) {
  return List<T>.from(list)..sort(compare);
}

void main() {
  var numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];
  var sortedAsc = sortList<int>(numbers, (a, b) => a.compareTo(b));
  print(sortedAsc);

  var sortedDesc = sortList<int>(numbers, (a, b) => b.compareTo(a));
  print(sortedDesc);

  var words = ['banana', 'apple', 'cherry', 'date'];
  var sortedWords = sortList<String>(words, (a, b) => a.compareTo(b));
  print(sortedWords);
}
