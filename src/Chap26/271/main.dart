/*
Effective Dart: Style
https://dart.dev/effective-dart/style#do-name-types-using-uppercamelcase

DO name types using UpperCamelCase
*/

typedef PersonRecord = ({String name, int age});

class HttpRequest {}

enum WeekDay { mon, tue, wed, thu, fri, sat, sun }

abstract class Shape {}

void main() {
  PersonRecord p = (name: "Taro", age: 20);
  print(p);
}
