/// コンストラクターの初期化リストは以下の状況で使用します：
/// 1. finalフィールドの初期化
/// 2. スーパークラスのコンストラクター呼び出し
/// 3. リダイレクティングコンストラクターの実装

class Person {
  final String name;
  final int age;

  // finalフィールドの初期化
  Person(this.name, this.age);

  // リダイレクティングコンストラクター
  Person.adult(String name) : this(name, 18);
}

class Employee extends Person {
  final String company;

  // スーパークラスのコンストラクター呼び出しとfinalフィールドの初期化
  Employee(String name, int age, this.company) : super(name, age);
}

void main() {
  var person = Person('Taro', 30);
  var adult = Person.adult('Hanako');
  var employee = Employee('Jiro', 25, 'Tech Corp');

  print('${person.name} is ${person.age} years old');
  print('${adult.name} is ${adult.age} years old');
  print('${employee.name} works at ${employee.company}');
}
