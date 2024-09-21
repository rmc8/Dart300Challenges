import "dart:io";

void main() {
  File f = File("test.txt");
  String text = f.readAsStringSync();
  print(text);
}
