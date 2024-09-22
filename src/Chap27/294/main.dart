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

bool check(String text) {
  final length = text.length;
  var checkText = text.toLowerCase();
  for (var i = 0; i < checkText.length; i++) {
    if (checkText[i] != checkText[length - 1 - i]) {
      return false;
    }
  }
  return true;
}

void main() {
  print("回文を入力してください。");
  var text = input();
  var ans = check(text);
  print(ans ? "回文です" : "回文ではありません");
}
