import "dart:io";

import "package:intl/intl.dart";

void main() {
  File f = File("test.txt");
  DateTime now = DateTime.now();
  DateFormat fmt = DateFormat("yyyy-MM-dd HH:mm:ss");
  f.writeAsStringSync("Test: ${fmt.format(now)}\n", mode: FileMode.append);
  print("Done!");
}
