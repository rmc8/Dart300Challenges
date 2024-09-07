class Person {
  String name;

  Person._init(this.name);

  factory Person(String name) {
    if (name == "") {
      throw ArgumentError("名前を入力してください");
    }
    return Person._init(name);
  }

  void selfIntroduction() {
    print("私の名前は${name}です。");
  }
}

void main() {
  Person? p;
  p?.selfIntroduction();
  p = Person("Taro");
  p?.selfIntroduction();
}
