import 'package:intl/intl.dart';

void main() {
  String dateString = "2024-09-07";

  // 言語標準の機能
  DateTime dt1 = DateTime.parse(dateString);
  print(dt1);

  // intlを使った実装
  DateFormat fmt = DateFormat("yyyy-MM-dd");
  DateTime dt2 = fmt.parse(dateString);
  print(dt2);
}
