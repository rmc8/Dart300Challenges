/*
Dart2.12以降でNull safetyが導入されました。変数がnullを許容するかを明示的に宣言する子によって
nullの扱いに関連するエラーを仕組みとして防ごうとする狙いがあります。
*/

void main() {
  // Null許容の宣言
  String? email = 'example@email.com';

  // Nullの検査
  // null許容の変数を使うときはnullであるか確認する操作が必要です
  if (email != null) {
    print(email);
  }

  Person? p = Person();
  Person? n = null;
  // ?.演算子
  // オブジェクトがnullの場合はnullを返す
  String? name1 = n?.name;
  String? name2 = p?.name;

  // ??演算子
  // 左辺がnullの場合右辺を返す
  String name3 = name2 ?? "Taro";
  print(name3);

  String? name4 = "Jiro";
  String name5 = name4 ?? "Taro";
  print(name5);

  // ??=演算子
  // 変数がnull場合に代入する
  p.name ??= "Hanako";
  p.name ??= "Jiro";
  print(p.name);

  // !演算子(Null検査演算子)
  // nullではないことを強調する。使用はなるべく避けるべきです。代わりにif文でnullチェックをしましょう。
  greet(p.name!);

  // ...?演算子(Null-aware spread演算子)
  // nullである可能性がある配列を展開する
  List<int>? numList1 = null;
  List<int>? numList2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var numList3 = [...?numList1, ...?numList2];
  print(numList3);
}

class Person {
  String? name = null;
}

void greet(String name) {
  print("Hello, $name!");
}
