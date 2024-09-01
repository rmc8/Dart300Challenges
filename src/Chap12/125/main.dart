class Person {
  String _name;
  int _age;

  String get name => _name;
  int get age => _age;

  Person._init(this._name, this._age);

  factory Person(String name, int age) {
    if (age < 0) {
      throw ArgumentError("年齢は0歳以上である必要があります。");
    }
    return Person._init(name, age);
  }

  set name(String newName) {
    if (newName != "") {
      _name = newName;
      return;
    }
    throw ArgumentError("名前は空にすることはできません。");
  }

  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
      return;
    }
    throw ArgumentError("年齢は0歳以上である必要があります。");
  }
}

void main() {
  Person p = Person("Taro", 20);
  print((name: p.name, age: p.age));
  p.name = "Jiro";
  p.age = 17;
  print((name: p.name, age: p.age));
}
