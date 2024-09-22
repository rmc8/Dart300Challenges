import 'dart:io';
import 'dart:math';

int? getIntegerInput() {
  print("1以上100以下の整数を入力して数を当ててください。");
  String? input = stdin.readLineSync();
  try {
    if (input == null ||
        input.isEmpty ||
        int.parse(input) < 0 ||
        int.parse(input) > 100) {
      throw Exception();
    }
    return int.parse(input);
  } catch (e) {
    print('有効な整数を入力してください。');
    return null;
  }
}

void main() {
  final random = Random();
  final number = random.nextInt(99) + 1;
  var cnt = 1;
  while (true) {
    int? ans = null;
    while (true) {
      ans = getIntegerInput();
      if (ans == null) {
        continue;
      }
      break;
    }

    if (ans == number) {
      break;
    } else if (ans < number) {
      print("$ansより大きいです");
    } else {
      print("$ansより小さいです");
    }
    cnt++;
  }
  print("正解です！(正解までの回数は${cnt}回です)");
}
