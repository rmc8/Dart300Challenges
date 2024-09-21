import 'dart:io';

void main() async {
  int threshold = 1000000;
  Directory d = Directory("../../..");
  List<FileSystemEntity> entities = d.listSync(recursive: true);
  for (var entity in entities) {
    if (entity is File) {
      if (entity.lengthSync() > threshold) {
        print(entity.path);
      }
    }
  }
}
