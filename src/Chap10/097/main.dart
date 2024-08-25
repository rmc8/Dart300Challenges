({String name, int age}) getPerson(String name, int age) {
  return (name: name, age: age);
}

Map<String, dynamic> personToMap(({String name, int age}) person) {
  return {"name": person.name, "age": person.age};
}

void main() {
  var taro = getPerson("Taro", 20);
  var taroMap = personToMap(taro);
  print(taroMap);
}
