typedef Person = ({String name, int age});

void printPerson(Person p) {
  var (name: name, age: age) = p;
  print("Name: $name, Age: $age");
}

void main() {
  Person taro = (name: "Taro", age: 20);
  Person jiro = (name: "Jiro", age: 16);
  printPerson(taro);
  printPerson(jiro);
}
