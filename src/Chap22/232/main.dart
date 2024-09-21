import "dart:io";

void main() async {
  File f = File("q.md");
  print(f.existsSync());
  Directory dir = Directory("dir");
  print(dir.existsSync());
  print("Done!");
}
