import 'dart:io';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:path/path.dart' as path;

class Stock {
  String dbPath;
  Database? _database;

  Stock(this.dbPath);

  Future<String> getDatabasePath() async {
    String dirPath = await getDatabasesPath();
    return path.join(dirPath, this.dbPath);
  }

  Future<Database> _getDatabase() async {
    if (_database != null) return _database!;

    final dbPath = await getDatabasePath();
    if (File(dbPath).existsSync()) {
      _database = await openDatabase(dbPath);
    } else {
      _database =
          await openDatabase(dbPath, version: 1, onCreate: (db, version) async {
        await db.execute("""
          CREATE TABLE STOCK (
            item_id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            qty INTEGER
          )
        """);
      });
    }
    return _database!;
  }

  Future<void> closeDatabase() async {
    final db = await _getDatabase();
    await db.close();
    _database = null;
  }

  Future<void> registerProduct(String itemName) async {
    final db = await _getDatabase();
    await db.insert("STOCK", {"name": itemName, "qty": 0});
  }

  Future<Map<String, dynamic>> getStock(int itemId) async {
    final db = await _getDatabase();
    final sql = "SELECT * FROM STOCK WHERE item_id = ?";
    List<Map<String, dynamic>> results = await db.rawQuery(sql, [itemId]);
    if (results.isEmpty) {
      return {};
    }
    return results[0];
  }

  Future<void> stockIn(int itemId, int qty) async {
    final db = await _getDatabase();
    final data = await getStock(itemId);
    final currentQty = data["qty"] as int? ?? 0;
    await db.update("STOCK", {"qty": currentQty + qty},
        where: "item_id=?", whereArgs: [itemId]);
  }

  Future<void> stockOut(int itemId, int qty) async {
    final db = await _getDatabase();
    final data = await getStock(itemId);
    final currentQty = data["qty"] as int? ?? 0;
    final newQty = currentQty - qty;
    if (newQty < 0) {
      throw Exception("The inventory quantity has become negative.");
    }
    await db.update("STOCK", {"qty": newQty},
        where: "item_id=?", whereArgs: [itemId]);
  }

  Future<List<Map<String, dynamic>>> getAllStocks() async {
    final db = await _getDatabase();
    final sql = "SELECT * FROM STOCK";
    return db.rawQuery(sql);
  }
}

void main() async {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  String dbPath = "school.db";
  final st = Stock(dbPath);

  try {
    // await st.registerProduct("Apple");
    // await st.registerProduct("Banana");
    // await st.stockIn(1, 10);
    // await st.stockIn(2, 8);
    // await st.stockOut(2, 3);
    final results = await st.getAllStocks();
    print(results);
  } finally {
    await st.closeDatabase();
  }
}
