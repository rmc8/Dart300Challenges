({String name, int age}) getPerson(String name, int age) {
  return (name: name, age: age);
}

void main() {
  var taro = getPerson("Taro", 20);
  var jiro = getPerson("Jiro", 16);
  var hanako = getPerson("Hanako", 18);
  var sachiko = getPerson("Sachiko", 17);
  var personList = [taro, jiro, hanako, sachiko];
  personList.sort((a, b) => a.age - b.age);
  print(personList);
}
