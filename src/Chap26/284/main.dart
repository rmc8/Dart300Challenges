/*
Effective Dart: Usage
https://dart.dev/effective-dart/usage#prefer-asyncawait-over-using-raw-futures
*/

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => "データを取得しました");
}

Future<void> ok() async {
  print("処理開始");
  try {
    String result = await fetchData();
    print(result);
  } catch (e) {
    print("エラーが発生しました: $e");
  }
  print("処理終了");
}

// 非同期処理を回避している
void ng() {
  print("処理開始");
  fetchData();
  print("処理終了");
}

void main() async {
  await ok();
  ng();
}
