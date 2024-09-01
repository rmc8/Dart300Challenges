class Person {
  final String name;
  final int birthYear;

  const Person(this.name, this.birthYear);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          birthYear == other.birthYear;

  @override
  int get hashCode => name.hashCode ^ birthYear.hashCode;

  @override
  String toString() => 'Person(name: $name, birthYear: $birthYear)';
}

void main() {
  const taro = Person("Taro", 2003);
  const anotherTaro = Person("Taro", 2003);

  print(taro);
  print(taro == anotherTaro);
}
