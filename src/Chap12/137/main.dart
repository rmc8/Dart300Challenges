class Person {
  final String name;

  const Person(this.name);

  @override
  int get hashCode => name.hashCode;

  // == 演算子のオーバーロード
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && runtimeType == other.runtimeType && name == other.name;

  @override
  String toString() => 'Person(name: $name)';
}

void main() {
  final person1 = Person('Taro');
  final person2 = Person('Jiro');
  final person3 = Person('Taro');

  // == 演算子の検証
  print(person1 == person3);
  print(person1 == person2);
}
