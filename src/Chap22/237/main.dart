import 'dart:io';

import 'package:path/path.dart';

void main() async {
  Directory d = Directory("../../../");
  List<FileSystemEntity> entities = d.listSync(recursive: true);
  for (var entity in entities) {
    if (entity is File) {
      String ext = extension(entity.path);
      if (ext == ".dart") {
        print(entity.path);
      }
    }
  }
}
