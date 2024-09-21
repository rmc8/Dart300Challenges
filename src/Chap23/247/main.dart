import 'dart:convert';

void main() {
  var jsonStr = """{
    "pref": "Tokyo",
    "city": "Shinjuku",
    "date": "2024-09-21",
    "weather": "Cloudy"
  }""";
  var data = jsonDecode(jsonStr);
  print(data["weather"]);
}
