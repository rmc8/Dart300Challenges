import 'dart:convert';

import 'package:dio/dio.dart';

Future<void> request() async {
  var dio = Dio();
  var response = await dio.get(
    'https://api.aoikujira.com/tenki/week.php?fmt=json&city=319',
    options: Options(headers: {
      "User-Agent":
          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36"
    }),
  );
  print(jsonDecode(response.data));
}

void main() async {
  var req = request();
  print("Processing request...");
  await req;
  print("Done!");
}
