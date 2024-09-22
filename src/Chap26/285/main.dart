/*
Effective Dart: Usage
https://dart.dev/effective-dart/usage#avoid-catches-without-on-clauses

* on句のないcatchは避ける
* on句のないcatchで補足したエラーは無視しない
* プログラムのエラーに対して'Error'を継承したオブジェクトをスローする
* 'Error'やそのサブタイプを明示的に補足しない
* 補足した例外を再スローするにはrethrowを使う

*/

// Effective Dart: エラー処理のベストプラクティス

import 'dart:async';

void main() {
  // 良い例: 特定の例外タイプを捕捉
  try {
    riskyOperation();
  } on FormatException catch (e) {
    print('フォーマットエラーが発生しました: $e');
  } on TimeoutException catch (e) {
    print('タイムアウトが発生しました: $e');
  }

  // 悪い例: 全ての例外を捕捉（避けるべき）
  // try {
  //   riskyOperation();
  // } catch (e) { // onを使わずに全ての例外を捕捉している
  //   print('エラーが発生しました'); // エラーを無視している
  // }

  // 良い例: エラーを適切に処理
  try {
    riskyOperation();
  } catch (e) {
    print('エラーが発生しました: $e');
    // エラーをログに記録したり、ユーザーに通知したりする
  }

  // プログラムのエラーに対してErrorをスロー
  if (someInvalidCondition()) {
    throw ArgumentError('無効な引数です');
  }

  // Errorの明示的な捕捉を避ける（コメントアウト）
  // try {
  //   someOperation();
  // } on Error catch (e) {
  //   print('Errorが発生しました: $e'); // 避けるべき
  // }

  // rethrowの使用
  try {
    riskyOperation();
  } catch (e) {
    print('エラーを記録しました');
    rethrow; // 元のスタックトレースを保持して再スロー
  }
}

void riskyOperation() {
  // 何らかのリスクのある処理
}

bool someInvalidCondition() {
  return false; // 例としてfalseを返す
}

void someOperation() {
  // 何らかの操作
}
