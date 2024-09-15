Map<U, T> reverseMap<T, U>(Map<T, U> map) {
  return map.map((key, value) => MapEntry(value, key));
}

void main() {
  var fruits = {"apple": 100, "banana": 200, "cherry": 300};
  var reversed = reverseMap(fruits);
  print(reversed);
}
