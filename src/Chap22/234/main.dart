import 'dart:io';

void main() async {
  File f = File("test.txt");
  Directory d = Directory("dir");
  await f.writeAsString("");
  await d.create(recursive: true);
  await f.delete();
  await d.delete(recursive: true);
}
