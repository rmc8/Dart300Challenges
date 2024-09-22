/*
Effective Dart: Usage
https://dart.dev/effective-dart/usage

Dart has three core collection types: List, Map, and Set. The Map and Set classes have unnamed constructors like most classes do. But because these collections are used so frequently, Dart has nicer built-in syntax for creating them:

DartではList, Map, Setの3つのコレクションがあリます。ほとんどのクラスと同様に無名のコンストラクタを
持っていますが、これらのコレクションは頻繁に使われるために、より簡潔な構文があります。
*/

void good() {
  var numList = <int>[];
  var fruits = <String, int>{};
  var counts = <int>{};
}

void bad() {
  var fruits = Map<String, int>();
  var counts = Set<int>();
}

void main() {}
