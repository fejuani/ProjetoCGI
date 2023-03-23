import 'connection.dart';
import 'package:sqflite/sqflite.dart';

class AccountDAO {
  static const String _table = "Account";

  static Future<int> insert(Map<String, dynamic> map) async {
    Database database = await Account.getConnection();
    int result = await database.insert(_table, map);
    return result;
  }

  static Future<List<Map<String,dynamic>>> 
  findAll() async{
    Database database = await Account.getConnection();
    return database.query(_table);
  }
}