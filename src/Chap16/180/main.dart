class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  Person taro = Person("Taro", 20);
  var Person(name: name, age: age) = taro;
  print(name);
  print(age);
}
