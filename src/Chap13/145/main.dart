class Person {
  String name;

  Person({required this.name});
}

void main() {
  Person taro = Person(name: "Taro");
  print(taro.name);
}
