class Person {
  String name;
  int age;

  Person(this.name, this.age);

  Person.baby({this.name = "Baby", this.age = 0});
}

void main() {
  Person baby = Person.baby();
  print(baby.name);
  print(baby.age);
}
