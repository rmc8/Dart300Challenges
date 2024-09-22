import 'package:dio/dio.dart';
import 'package:path/path.dart';

final dio = Dio();

Future<void> upload(String filePath) async {
  FormData formData = FormData.fromMap({
    "name": basename(filePath),
    "file": await MultipartFile.fromFile(
      filePath,
      filename: basename(filePath),
    ),
  });
  Response r = await dio.post("https://api.example.com/upload", data: formData);
  var code = r.statusCode;
  if (code != null && code >= 200 && code < 300) {
    print("Success!");
  } else {
    print("Failure!(${r.statusCode})");
  }
}

void main() async {
  await upload("file.txt");
}
