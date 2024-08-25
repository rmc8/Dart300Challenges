({String name, int age}) getPerson(String name, int age) {
  return (name: name, age: age);
}

void greet(({String name, int age}) person) {
  print("私は${person.name}です！年齢は${person.age}歳です。");
}

void main() {
  var taro = getPerson("Taro", 20);
  var hanako = getPerson("Hanako", 18);
  greet(taro);
  greet(hanako);
}
