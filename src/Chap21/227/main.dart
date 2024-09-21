import 'dart:io';
import 'dart:convert';

void main() async {
  File f = File("lines.txt");
  Stream<String> lines =
      f.openRead().transform(utf8.decoder).transform(LineSplitter());
  await for (var line in lines) {
    print(line);
  }
}
