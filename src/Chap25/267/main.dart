import 'dart:convert';

import 'package:dio/dio.dart';

Future<void> request(int cityId) async {
  var dio = Dio();
  var response = await dio.get(
    'https://api.aoikujira.com/tenki/week.php?fmt=json&city=$cityId',
    options: Options(headers: {
      "User-Agent":
          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36"
    }),
  );
  print(jsonDecode(response.data));
}

void main() async {
  var tokyo = request(319);
  var nagoya = request(329);
  var fukuoka = request(346);
  await Future.wait([tokyo, nagoya, fukuoka]);
  print("Done!");
}
