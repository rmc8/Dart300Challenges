import 'dart:math';

int fibWithoutMemo(int n) {
  if (n <= 1) return n;
  return fibWithoutMemo(n - 1) + fibWithoutMemo(n - 2);
}

int fibWithMemo(int n, [Map<int, int>? memo]) {
  memo ??= {};
  if (n <= 1) return n;
  if (memo.containsKey(n)) {
    return memo[n]!;
  }
  memo[n] = fibWithMemo(n - 1, memo) + fibWithMemo(n - 2, memo);
  return memo[n]!;
}

void main() {
  int n = 42;

  // メモ化なしの計算時間を測定
  Stopwatch stopwatch = Stopwatch()..start();
  int resultWithoutMemo = fibWithoutMemo(n);
  int timeWithoutMemo = stopwatch.elapsedMilliseconds;

  // メモ化ありの計算時間を測定
  stopwatch.reset();
  stopwatch.start();
  int resultWithMemo = fibWithMemo(n);
  int timeWithMemo = stopwatch.elapsedMilliseconds;

  // 結果の照合
  assert(resultWithMemo == resultWithoutMemo);

  // 結果を出力
  print('Fibonacci($n) without memoization:');
  print('Time: $timeWithoutMemo ms');

  print('\nFibonacci($n) with memoization:');
  print('Time: $timeWithMemo ms');

  // 速度向上の倍率を計算
  double speedup = timeWithoutMemo / max(timeWithMemo, 1);
  print('\nSpeed improvement: ${speedup.toStringAsFixed(2)}x');
}
