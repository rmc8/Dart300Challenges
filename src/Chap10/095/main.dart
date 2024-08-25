({String name, int age}) getPerson(String name, int age) {
  return (name: name, age: age);
}

void main() {
  var taro_1 = getPerson("Taro", 20);
  var taro_2 = getPerson("Taro", 20);
  var hanako = getPerson("Hanako", 18);

  print(taro_1 == taro_1);
  print(taro_2 == taro_1);
  print(hanako == taro_1);
}
