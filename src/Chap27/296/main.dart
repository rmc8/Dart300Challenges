import 'dart:io';

String input() {
  late String? text;
  while (true) {
    text = stdin.readLineSync();
    if (text == null || text.length == 0) {
      print("テキストを入力してください。");
      continue;
    }
    return text;
  }
}

void main() {
  print("英文を入力してください。");
  final text = input().toUpperCase();
  final reg = RegExp(r"[A-Z]");
  final count = reg.allMatches(text).length;
  print(count);
}
