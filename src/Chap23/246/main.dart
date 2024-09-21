import 'dart:io';

import 'package:csv/csv.dart';

void main() {
  final data = [
    ["pref", "city", "date", "weather"],
    ["Tokyo", "Shinjuku", "2024-09-21", "Cloudy"],
    ["Kanagawa", "Yokohama", "2024-09-21", "Sunny"],
  ];
  String csv = ListToCsvConverter().convert(data);
  File csvFile = File("weather.csv");
  csvFile.writeAsString(csv);
}
