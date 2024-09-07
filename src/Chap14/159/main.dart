class Person {
  String name;

  Person(this.name);

  void selfIntroduction() {
    try {
      if (name == "") {
        throw Exception("名前が設定されていません");
      }
      print("$name と申します。");
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}

void main() {
  Person p = Person("");
  p.selfIntroduction();
}
