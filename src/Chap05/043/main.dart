import 'dart:io';

void main() {
  var t;
  do {
    print("文字列を入力してください(qを入力すると終了します)。");
    t = stdin.readLineSync();
    print(t);
  } while (t != "q");
}
