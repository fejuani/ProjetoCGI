import 'package:sqflite/sqflite.dart';

class Account{
  static Future<Database> getConnection() async{
    var sysPath = getDatabasesPath();
    var path = "$sysPath AccountUser.db";
    var db = await openDatabase(
      
      path,
      version: 1,
      onCreate: (db, _) async{
        await db.execute(
        "create table account(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, cpf TEXT, phone TEXT, email TEXT)"
          );

      },
      );
    return  db;
  }
}