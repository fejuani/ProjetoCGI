import 'package:sqflite/sqflite.dart';

class Connection {
  static const String _table = "AccountModel";

  static Future<Database> getConnection() async {
    final pathDefault = await getDatabasesPath();
    const dbName = "Account.db";
    final path = "$pathDefault $dbName";
    final db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute(
            "create table $_table(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, cpf TEXT, phone TEXT, email TEXT,)");
      },
    );
    return db;
  }
}