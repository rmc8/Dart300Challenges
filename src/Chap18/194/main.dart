class Dictionary<T, U> {
  Map<T, U> dict = {};

  void add(T key, U value) {
    dict[key] = value;
  }

  Map<T, U> toDict() {
    return dict;
  }
}

void main() {
  var dict1 = Dictionary<String, int>();
  dict1.add("apple", 100);
  dict1.add("banana", 200);
  print(dict1.toDict());
  var dict2 = Dictionary<int, int>();
  dict2.add(4, 16);
  dict2.add(8, 64);
  print(dict2.toDict());
}
