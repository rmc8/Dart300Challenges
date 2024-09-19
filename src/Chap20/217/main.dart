bool dateFmtCheck(String dateString) {
  final reg = RegExp(r"^\d{4}-\d{2}-\d{2}$");
  final match = reg.hasMatch(dateString);
  if (!match) {
    return false;
  }
  var dateList = dateString.split("-");
  int? y = int.tryParse(dateList[0]);
  int? m = int.tryParse(dateList[1]);
  int? d = int.tryParse(dateList[2]);
  if (y == null || m == null || d == null) {
    return false;
  }
  final dt = DateTime(y, m, d);
  return y == dt.year && m == dt.month && d == dt.day;
}

void main() {
  print(dateFmtCheck("2024-09-18") ? "Date" : "Invalid format");
  print(dateFmtCheck("2024-24-35") ? "Date" : "Invalid format");
}
