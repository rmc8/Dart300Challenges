({String name, int age, bool student}) getPerson(
    String name, int age, bool student) {
  return (name: name, age: age, student: student);
}

bool isAdult(({String name, int age, bool student}) person) {
  return switch (person) {
    (name: _, age: int age, student: _) when age >= 19 => true,
    (name: _, age: int age, student: bool student) when age == 18 && !student =>
      true,
    _ => false
  };
}

void judge(({String name, int age, bool student}) person) {
  var adult = isAdult(person);
  var adultJudgeText = adult ? "成人" : "未成年";
  print("${person.name}は${adultJudgeText}です。");
}

void main() {
  var taro = getPerson("Taro", 20, false);
  var sachiko = getPerson("Sachiko", 17, true);
  var hanako = getPerson("Hanako", 18, false);
  var jiro = getPerson("Jiro", 18, true);

  judge(taro);
  judge(sachiko);
  judge(hanako);
  judge(jiro);
}
