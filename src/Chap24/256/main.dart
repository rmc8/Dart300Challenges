import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  final db = await openDatabase("school.db", version: 1,
      onCreate: (db, version) async {
    await db.execute('''
      CREATE TABLE STUDENT (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        grade INTEGER
      )
    ''');
  });

  try {
    await db.transaction((txn) async {
      // トランザクション内で複数の操作を実行
      await txn.insert('STUDENT', {'name': 'Taro', 'grade': 1});
      await txn.insert('STUDENT', {'name': 'Hanako', 'grade': 2});

      // NOTE: エラーが起こると上記の処理が反映されない
      // throw Exception('Simulated error');

      await txn.insert('STUDENT', {'name': 'Jiro', 'grade': 3});
    });

    print('Transaction completed successfully');
  } catch (e) {
    print('Transaction failed: $e');
  }

  // Results
  List<Map<String, dynamic>> results = await db.query('STUDENT');
  for (var row in results) {
    print('ID: ${row['id']}, Name: ${row['name']}, Grade: ${row['grade']}');
  }

  await db.close();
}
