import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';

void main() async {
  File csvFile = File("weather.csv");
  final data = await csvFile
      .openRead()
      .transform(utf8.decoder)
      .transform(CsvToListConverter())
      .toList();
  print(data);
}
