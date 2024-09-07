void main() {
  DateTime now = DateTime.now();
  print("現地時間: ${now} ${now.timeZoneOffset}");
  print("UTC: ${now.toUtc()}");
}
