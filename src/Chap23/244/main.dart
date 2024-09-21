import 'dart:io';
import 'dart:convert';

void main() async {
  var weather = {
    "pref": "Tokyo",
    "city": "Shinjuku",
    "date": "2024-09-21",
    "weather": "Cloudy"
  };
  File jf = File("weather.json");
  String jsonStr = jsonEncode(weather);
  await jf.writeAsString(jsonStr);
  print("Done!");
}
