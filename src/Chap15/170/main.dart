Duration durationMax(Duration a, Duration b) {
  if (a.inSeconds.abs() > b.inSeconds.abs()) {
    return a;
  }
  return b;
}

void main() {
  DateTime now = DateTime.now();
  DateTime dtA = DateTime(2024, 9, 7);
  DateTime dtB = DateTime(2025, 9, 5);
  Duration durationA = dtA.difference(now);
  Duration durationB = dtB.difference(now);
  print(durationMax(durationA, durationB));
}
