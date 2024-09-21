import 'dart:io';

void main() {
  String dirPath = "../../Chap21/";
  Directory dir = Directory(dirPath);
  List<FileSystemEntity> entities = dir.listSync(recursive: true);
  for (var entity in entities) {
    if (entity is File) {
      File f = entity;
      print(f.path);
    }
  }
}
