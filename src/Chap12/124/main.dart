class Person {
  String name;
  int age;

  Person._init(this.name, this.age);

  factory Person(String name, int age) {
    if (age < 0) {
      throw ArgumentError("年齢は0歳以上である必要があります。");
    }
    return Person._init(name, age);
  }
}

void main() {
  Person taro = Person("Taro", 20);
  print(taro.name);
  Person baby = Person("Baby", -1); // エラーとなる
  print(baby.name);
}
