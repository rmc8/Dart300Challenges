import 'dart:convert';

void main() {
  Map<String, int> fruits = {
    "Banana": 10,
    "Apple": 20,
    "Orange": 30,
    "Grape": 40
  };
  print(jsonEncode(fruits));
}
