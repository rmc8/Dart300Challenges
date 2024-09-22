import 'package:dio/io.dart';
import 'package:dio/dio.dart';

void main() async {
  var dio = Dio();

  // Enable SSL verification
  (dio.httpClientAdapter as IOHttpClientAdapter).validateCertificate =
      (cert, host, port) {
    return true;
  };

  try {
    var response = await dio.get('https://api.datamuse.com/words?sp=b??k');
    print('Success: ${response.statusCode}');
    print(response.data);
  } on DioException catch (e) {
    if (e.type == DioExceptionType.badCertificate) {
      print('Failed with bad certificate: ${e.message}');
    } else {
      print('Raise an unexpected error: ${e.message}');
    }
  } catch (e) {
    print('Raise an unexpected error: $e');
  }
}
