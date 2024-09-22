import 'package:dio/dio.dart';

class RedirectInterceptor extends Interceptor {
  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    if (response.statusCode == 301 || response.statusCode == 302) {
      final redirectUrl = response.headers.value('location');
      if (redirectUrl != null) {
        final redirectResponse = await Dio().get(redirectUrl);
        return handler.next(redirectResponse);
      }
    }
    return handler.next(response);
  }
}

void main() async {
  var dio = Dio();
  dio.interceptors.add(RedirectInterceptor());
  try {
    final r = await dio.get('https://example.com');
    print('Response: ${r.data}');
  } catch (e) {
    print('Error: $e');
  }
}
