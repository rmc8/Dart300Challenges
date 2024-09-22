import 'package:dio/dio.dart';

void main() async {
  var dio = Dio();
  var response = await dio.get(
    'https://api.datamuse.com/words?sp=b??k',
    options: Options(headers: {
      "User-Agent":
          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36"
    }),
  );
  print(response.data);
}
