import 'package:intl/intl.dart';

void main() {
  DateTime now = DateTime.now();
  DateFormat fmt = DateFormat("yyyy-MM-dd H:m:s");
  String nowStr = fmt.format(now);
  print(nowStr);
}
