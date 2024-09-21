import "dart:io";

void main() async {
  Directory dir = Directory("./dir");
  await dir.create(recursive: true);
  print("Done!");
}
