import 'dart:convert';

void main() {
  var jsonStr = '{"Banana":10,"Apple":20,"Orange":30,"Grape":40}';
  Map<String, dynamic> fruits = jsonDecode(jsonStr);
  print(fruits);
}
