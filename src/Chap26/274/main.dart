/*
Effective Dart: Style
https://dart.dev/effective-dart/style

## DON'T use a leading underscore for identifiers that aren't private

Dart uses a leading underscore in an identifier to mark members and top-level declarations as private. This trains users to associate a leading underscore with one of those kinds of declarations. They see "_" and think "private".
There is no concept of "private" for local variables, parameters, local functions, or library prefixes. When one of those has a name that starts with an underscore, it sends a confusing signal to the reader. To avoid that, don't use leading underscores

Dartではプライベートなメンバーとトップレベルデータ型を扱うのに、名前の先頭にアンダースコアを使います。これにより、ユーザーは先頭のアンダースコアを見ることによってprivateであると考えます。
ローカル変数、パラメータ、ローカル関数、ライブラリの接頭辞にはプライベートの概念はありません。これらがアンダースコアではじまると、読み手に混乱をさせる可能性があります。混乱を避けるために、ローカル変数、パラメータ、ローカル関数、ライブラリの接頭辞に対してはアンダースコアは使わないことです。


*/

class GoodPerson {
  String _name;
  int _age;
  GoodPerson(this._name, this._age);
}

void _badNameFunc() => {};

void main() => {};
