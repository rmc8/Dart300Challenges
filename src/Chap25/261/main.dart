import 'package:dio/dio.dart';

void main() async {
  var dio = Dio();
  var response = await dio.get('https://api.datamuse.com/words?sp=b??k');
  print(response.data);
}
