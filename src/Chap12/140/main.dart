class Person {
  final String name;
  final int birthYear;
  final String _id;

  Person(this.name, this.birthYear, this._id);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is Person &&
        other.name == name &&
        other.birthYear == birthYear &&
        other._id == _id;
  }

  @override
  int get hashCode => name.hashCode ^ birthYear.hashCode ^ _id.hashCode;

  @override
  String toString() {
    return "Person(name: $name, birthYear: $birthYear, _id: $_id)";
  }
}

void main() {
  var taro = Person("Taro", 1990, "abc");
  var jiro = Person("Jiro", 1995, "def");
  var otherTaro = Person("Taro", 1990, "abc");
  var taro2 = Person("Taro", 1990, "efg");

  print(taro == taro);
  print(taro == jiro);
  print(taro == otherTaro);
  print(taro == taro2);
}
