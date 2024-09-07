DateTime getLastDayOfMonth(DateTime dt) {
  late DateTime nextMonth;
  if (dt.month == 12) {
    nextMonth = DateTime(dt.year + 1, 1);
  } else {
    nextMonth = DateTime(dt.year, dt.month + 1);
  }
  return nextMonth.add(Duration(days: -1));
}

void main() {
  DateTime now = DateTime.now();
  print(getLastDayOfMonth(now));
}
