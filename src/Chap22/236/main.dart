import 'dart:io';

import 'package:path/path.dart';

void main() async {
  Directory d = Directory("../../..");
  List<FileSystemEntity> entities = d.listSync(recursive: true);
  Map<String, int> extMap = {};
  for (var entity in entities) {
    if (entity is File) {
      String ext = extension(entity.path);
      if (ext == "") {
        continue;
      }
      if (extMap.containsKey(ext)) {
        extMap[ext] = extMap[ext]! + 1;
      } else {
        extMap[ext] = 1;
      }
    }
  }
  print(extMap);
}
