import 'dart:io';

void walk(List<FileSystemEntity> entities) {
  for (var entity in entities) {
    if (entity is Directory) {
      walk(entity.listSync());
    } else if (entity is File) {
      print(entity.path);
    }
  }
}

void main() async {
  Directory d = Directory("../../Chap22");
  List<FileSystemEntity> entities = d.listSync();
  walk(entities);
}
