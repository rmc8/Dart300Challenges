import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future<void> ver1(String dbPath) async {
  var sql = """
CREATE TABLE STUDENT (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
)
""";
  final db =
      await openDatabase(dbPath, version: 1, onCreate: (db, version) async {
    await db.execute(sql);
    // Insert
    await db.insert('STUDENT', {'name': 'Taro'});
    await db.insert('STUDENT', {'name': 'Hanako'});
    await db.insert('STUDENT', {'name': 'Jiro'});
  });

  await db.close();
}

Future<void> ver2(String dbPath) async {}

void main() async {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  await ver1("school.db");
}
