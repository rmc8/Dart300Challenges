/*
const:
コンパイル時に値が確定する不変のものです。以下の特徴があります。
- コンパイル時に値が既知である時に使えます。
- プログラム全体を通じて変更できません。
- パフォーマンス面で有利です。
- Flutterでは、特に描画の変更がないウィジェットに対して使用され、パフォーマンスの改善に役立ちます。

final:
初期化時に値が確定しその後変更できないものです。以下の特徴があります。
- 実行時に値が決定します。
- 一度初期化されるとその後変更できません。
- インスタンス変数やローカル変数として使用できます。
- 実行時にしか決定できない値に使用します。
*/

class Program {
  final String name;
  final DateTime runTime = DateTime.now();
  Program(this.name);
}

class Color {
  static const RED = 0xff0000;
  static const GREEN = 0x00ff00;
  static const BLUE = 0x0000ff;
}

// constコンストラクタの例
class ImmutablePoint {
  final int x;
  final int y;
  const ImmutablePoint(this.x, this.y);
}

void main() {
  // constの使用例
  const List<int> numList1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  const pi = 3.14159;
  const ImmutablePoint point = ImmutablePoint(0, 0);

  // finalの使用例
  final List<int> numList2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final currentTime = DateTime.now();
  final program = Program("MyProgram");

  // numList1.add(11); // コンパイルエラー：constのリストは変更不可
  numList2.add(11); // OK：finalのリストの内容は変更可能

  print(numList1);
  print(numList2);
  print("Pi: $pi");
  print("Current time: $currentTime");
  print("Program name: ${program.name}, Runtime: ${program.runTime}");
  print("Immutable point: (${point.x}, ${point.y})");
}
