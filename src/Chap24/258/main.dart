import 'dart:io';

import 'package:path/path.dart' as path;
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
  final dbDir = await getDatabasesPath();
  final dbPath = path.join(dbDir, 'school.db');

  final db =
      await openDatabase(dbPath, version: 1, onCreate: (db, version) async {
    await db.execute(sql);
    // Insert
    await db.insert('STUDENT', {'name': 'Taro'});
    await db.insert('STUDENT', {'name': 'Hanako'});
    await db.insert('STUDENT', {'name': 'Jiro'});
  });
  await db.close();

  final backupPath = path.join(dbDir, 'school_backup.db');

  if (await File(dbPath).exists()) {
    await File(dbPath).copy(backupPath);
    print('Backup file has been created: $backupPath');
  } else {
    print('The original database file was not found: $dbPath');
  }
}
