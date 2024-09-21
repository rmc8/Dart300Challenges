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
    // Insert
    await db.insert('STUDENT', {'name': 'Taro'});
    await db.insert('STUDENT', {'name': 'Hanako'});
    await db.insert('STUDENT', {'name': 'Jiro'});
  });

  // Delete
  await db.delete("STUDENT", where: "name=?", whereArgs: ["Taro"]);

  // Select
  List<Map<String, dynamic>> results =
      await db.rawQuery('SELECT id, name FROM STUDENT');

  // Results
  for (var row in results) {
    print('ID: ${row['id']}, Name: ${row['name']}');
  }

  await db.close();
}
