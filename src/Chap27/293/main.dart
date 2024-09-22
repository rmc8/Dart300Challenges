import 'dart:io';

Map<String, String>? input() {
  String? input = stdin.readLineSync();
  final reg = RegExp(r"^\s*(-?\d+(\.\d+)?)\s+(-?\d+(\.\d+)?)\s+([-+*/])\s*$");
  if (input != null && reg.hasMatch(input)) {
    var data = input.trim().replaceAll(r"\s+", " ");
    var list = data.split(" ");
    return {"a": list[0], "b": list[1], "op": list[2]};
  }
  return null;
}

void main() {
  while (true) {
    print("式を入力してください（書式: a b op）");
    final data = input();
    if (data == null) {
      print("正しい式を入力してください");
      continue;
    }
    var a = double.parse(data["a"]!);
    var b = double.parse(data["b"]!);
    String op = data["op"]!;
    if (op == "/" && b == 0) {
      print("0除算はできません");
      continue;
    }
    switch (op) {
      case "+":
        print("$a + $b = ${a + b}");
        break;
      case "-":
        print("$a - $b = ${a - b}");
        break;
      case "*":
        print("$a * $b = ${a * b}");
        break;
      case "/":
        print("$a / $b = ${a / b}");
        break;
    }
    break;
  }
}
