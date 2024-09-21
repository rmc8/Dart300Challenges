import 'dart:io';

void main() {
  File f = File("test.txt");
  int fileSize = f.lengthSync();
  FileStat stat = f.statSync();
  print("File size: $fileSize");
  print("File last modified: ${stat.modified}");
}
