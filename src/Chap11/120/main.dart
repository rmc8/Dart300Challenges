Duration calculateTimeFromNow(DateTime targetDate) {
  var currentTime = DateTime.now();
  return currentTime.difference(targetDate);
}

Duration calculateTimeFrom2000(DateTime targetDate) {
  var year2000 = DateTime(2000);
  return targetDate.difference(year2000);
}

void main() {
  var aug30 = DateTime(2024, 8, 30);
  print(calculateTimeFromNow(aug30)); // 実行タイミングにより変わる(副作用を持つ)
  print(calculateTimeFrom2000(aug30)); // 一定の値が返ってくる純粋関数
}
