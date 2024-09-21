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

Future<void> ver2(String dbPath) async {
  final db = await openDatabase(
    dbPath,
    version: 2,
    onUpgrade: (db, oldVersion, newVersion) async {
      if (oldVersion < 2) {
        await db.execute('ALTER TABLE STUDENT ADD COLUMN age INTEGER');
      }
    },
  );
  await db.update('STUDENT', {'age': 20},
      where: 'name = ?', whereArgs: ['Taro']);
  await db.update('STUDENT', {'age': 22},
      where: 'name = ?', whereArgs: ['Hanako']);
  await db.update('STUDENT', {'age': 18},
      where: 'name = ?', whereArgs: ['Jiro']);

  final results = await db.query('STUDENT');
  for (var row in results) {
    print('ID: ${row['id']}, Name: ${row['name']}, Age: ${row['age']}');
  }

  await db.close();
}

void main() async {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  String dbPath = "school.db";
  // Init
  await ver1(dbPath);
  // Upgrade
  await ver2(dbPath);
}
