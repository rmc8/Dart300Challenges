import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  var student_table = """
CREATE TABLE STUDENT (
  student_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
)
""";
  var score_table = """
CREATE TABLE SCORE (
  score_id INTEGER PRIMARY KEY AUTOINCREMENT,
  student_id INTEGER,
  score INTEGER
)
""";
  final db = await openDatabase("school.db", version: 1,
      onCreate: (db, version) async {
    // STUDENT
    await db.execute(student_table);
    await db.insert('STUDENT', {'name': 'Taro'});
    await db.insert('STUDENT', {'name': 'Hanako'});
    await db.insert('STUDENT', {'name': 'Jiro'});
    // SCORE
    await db.execute(score_table);
    await db.insert('SCORE', {'student_id': 1, "score": 100});
    await db.insert('SCORE', {'student_id': 2, "score": 90});
    await db.insert('SCORE', {'student_id': 3, "score": 70});
  });

  // Select
  List<Map<String, dynamic>> results = await db.rawQuery(
      'SELECT st.*, sc.score  FROM STUDENT as st JOIN SCORE as sc ON st.student_id = sc.student_id');

  // Results
  for (var row in results) {
    print(row);
  }

  await db.close();
}
