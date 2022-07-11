import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:teste/lista_de_contatos/database/sqlite/script.dart';

class Connection {
  static Database? db;

  static Future<Database?> get() async {
    if (db == null) {
      var path = join(await getDatabasesPath(), 'banco_contatos');
      db = await openDatabase(
        path,
        version: 1,
        onCreate: (db, v) {
          db.execute(createTable);
          db.execute(insert1);
          db.execute(insert2);
          db.execute(insert3);
        },
      );
    }
    return db;
  }
}
