class Person {
  String _name;
  int _age;

  Person._init(this._name, this._age);
}

class Student extends Person {
  int _grade;

  Student._init(String name, int age, this._grade) : super._init(name, age);

  factory Student(String name, int age, int grade) {
    if (name == "") {
      throw ArgumentError("名前は空にすることはできません。");
    }
    if (age < 6 || age > 12) {
      throw ArgumentError("年齢は6歳以上、12歳以下である必要があります。");
    }
    if (grade < 1 || grade > 6) {
      throw ArgumentError("学年は1~6の間である必要があります。");
    }
    return Student._init(name, age, grade);
  }

  void greet() {
    print("${_name}です。${_age}歳です。今の学年は${_grade}年です。");
  }
}

void main() {
  var taro = Student("Taro", 10, 4);
  taro.greet();
}
