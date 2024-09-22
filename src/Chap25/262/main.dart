import 'package:dio/dio.dart';

void main() async {
  var dio = Dio();
  var url = "https://quotes.toscrape.com/login";
  var response = await dio.post(url);
  assert(response.statusCode == 200);
}
