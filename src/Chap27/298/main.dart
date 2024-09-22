import 'dart:io';

String inputText() {
  late String? text;
  while (true) {
    text = stdin.readLineSync();
    if (text == null || text.isEmpty) {
      print("テキストを入力してください。");
      continue;
    }
    return text;
  }
}

int? inputInteger() {
  while (true) {
    print("整数を入力してください：");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print("入力が空です。もう一度入力してください。");
      continue;
    }

    try {
      return int.parse(input);
    } on FormatException {
      print("有効な整数ではありません。もう一度入力してください。");
    }
  }
}

String caesarCipher(String text, int shift) {
  final alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  final result = StringBuffer();

  for (final char in text.runes) {
    if (char >= 65 && char <= 90) {
      final index = (char - 65 + shift) % 26;
      result.write(alphabet[index]);
    } else {
      result.writeCharCode(char); // アルファベット以外
    }
  }

  return result.toString();
}

void main() {
  print("暗号化する英文を入力してください。");
  final text = inputText().toUpperCase();

  print("シフト量を入力してください。");
  final shift = inputInteger() ?? 0; // nullの場合は0とする

  final encryptedText = caesarCipher(text, shift);
  print("暗号化された文字列: $encryptedText");
}
