import 'dart:io';

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

bool isPrime(int number) {
  if (number <= 1) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;

  for (int i = 3; i <= (number / 2).floor(); i += 2) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  final int num = inputInteger()!;
  final ans = isPrime(num);
  print("$num${ans ? "は素数です" : "は素数ではありません"}");
}
