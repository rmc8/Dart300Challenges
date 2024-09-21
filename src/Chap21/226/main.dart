import "dart:io";

void main() async {
  File f = File("lines.txt");
  List<String> lines = await f.readAsLines();
  for (var line in lines) {
    print(line);
  }
}
