import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  var sql = """
CREATE TABLE STUDENT (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
)
""";
  final db = await openDatabase("school.db", version: 1,
      onCreate: (db, version) async {
    await db.execute(sql);
  });

  await db.close();
}
