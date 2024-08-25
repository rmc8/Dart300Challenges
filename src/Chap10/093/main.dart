({String name, int age}) getPerson(String name, int age) {
  return (name: name, age: age);
}

void main() {
  var taro = getPerson("Taro", 20);
  var hanako = getPerson("Hanako", 18);
  print(taro);
  print(hanako);
}
