import 'dart:convert';

import 'package:csv/csv.dart';

void main() {
  var jsonStr = """{
  "students": [
    {
      "name": "John Smith",
      "id": "3A001"
    },
    {
      "name": "Emily Brown",
      "id": "3A002"
    },
    {
      "name": "Michael Lee",
      "id": "3A003"
    },
    {
      "name": "Sarah Johnson",
      "id": "3A004"
    },
    {
      "name": "David Wilson",
      "id": "3A005"
    }
  ]
}""";
  var jsonData = jsonDecode(jsonStr);
  var csvData = [
    [...jsonData["students"][0].keys]
  ];
  for (var student in jsonData["students"]) {
    csvData.add([...student.values]);
  }
  var csv = ListToCsvConverter().convert(csvData);
  print(csv);
}
