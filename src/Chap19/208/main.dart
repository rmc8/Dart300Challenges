class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void personCheck(Person p) {
  switch (p) {
    case Person(name: var name, age: var age) when name != "" && age >= 0:
      print("Name: $name, Age: $age");
    case Person(name: var name, age: var age) when name == "" && age < 0:
      print("Tha person name and age are invalid.");
    case Person(name: var name) when name != "":
      print("The name is empty.");
    case Person(age: var age) when age < 0:
      print("The age is invalid.");
  }
}

void main() {
  Person taro = Person("Taro", 20);
  Person invalid = Person("Taro", -1);
  personCheck(taro);
  personCheck(invalid);
}
