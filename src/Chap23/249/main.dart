import 'dart:io';
import 'dart:convert';
import 'package:csv/csv.dart';

void main() async {
  File f = File("data.csv");
  var data = await f
      .openRead()
      .transform(utf8.decoder)
      .transform(CsvToListConverter(eol: '\n', shouldParseNumbers: true))
      .toList();

  var total = 0.0;
  final priceIndex = 3;

  // NOTE: ヘッダーをスキップするため1から開始
  for (var i = 1; i < data.length; i++) {
    var row = data[i];
    if (row.length > priceIndex) {
      total += row[priceIndex] as double;
    }
  }
  print('Total: $total');
}
