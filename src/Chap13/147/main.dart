class Person {
  String name;

  Person(this.name);
}

void main() {
  Person? p;
  p = Person("Taro");
  print(p!.name);
}
