class Person {
  final String name;
  final int birthYear;
  final String fatherName;

  Person(this.name, this.birthYear, [this.fatherName = "unknown"]);

  @override
  String toString() {
    return """
[Person Detail]
name: $name
birthYear: $birthYear
fatherName: $fatherName
"""
        .trim();
  }
}

void main() {
  var person = Person("Taro", 1990, "Ichiro");
  print(person);
}
