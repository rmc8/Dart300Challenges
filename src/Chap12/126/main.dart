class Person {
  String _name;

  Person._init(this._name);

  factory Person(String name) {
    if (name == "") {
      throw ArgumentError("名前は空にすることはできません。");
    }
    return Person._init(name);
  }

  String getName() {
    return _name;
  }
}

void main() {
  Person taro = Person("Taro");
  print(taro.getName());
}
