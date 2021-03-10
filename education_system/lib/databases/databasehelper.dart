import 'dart:async';

import 'package:education_system/model/acount.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:sqflite/sqflite.dart';

class Database_helper {
  static final Database_helper _instance = Database_helper.init();
  factory Database_helper() => _instance;
  Database_helper.init();
  static Database _db;

  Future<Database> open_database() async {
    if (_db != null)
      return _db;
    else {
      var directory = await getApplicationDocumentsDirectory();
      var path = join(directory.path, "persons");
      var _db = await openDatabase(
        path,
        version: 1,
        onCreate: (Database db, int v) {
          db.execute(
              "create table profile( id integer primary key autoincrement,name varchar(50) ,email varchar(50), password varchar(20))");
          db.execute(
              "create table posts( id integer primary key autoincrement, title varchar(50), content varchar(1000))");
          db.execute(
              "create table professor( id integer primary key autoincrement,name varchar(50) ,email varchar(50), password varchar(20))");
        },
      );
      return _db;
    }
  }

  Future<int> add_acount(Acount acount) async {
    Database db = await open_database();
    int number = await db.insert('profile', acount.to_db());
  }

  Future<int> add_professor(Acount acount) async {
    Database db = await open_database();
    int number = await db.insert('professor', acount.to_db());
  }

  Future<List> all_acount() async {
    Database db = await open_database();
    var acounts = await db.rawQuery("SELECT * FROM profile");
    return acounts.toList();
  }

  Future<List> all_professor() async {
    Database db = await open_database();
    var acounts = await db.rawQuery("SELECT * FROM professor");
    return acounts.toList();
  }

  Future<Map> define_acount(int idd) async {
    Database db = await open_database();
    var acount = await db.rawQuery("SELECT * FROM profile WHERE id=$idd");
    return acount[0];
  }

  Future<Map> define_professor(int idd) async {
    Database db = await open_database();
    var acount = await db.rawQuery("SELECT * FROM professor WHERE id=$idd");
    return acount[0];
  }

  Future<int> delete_acount(int idd) async {
    Database db = await open_database();
    int x = await db.delete("profile", where: 'id=?', whereArgs: [idd]);
    close();
    return x;
  }

  Future<int> update_acount(Acount acount) async {
    Database db = await open_database();
    return db.update("profile", acount.to_db(),
        where: 'id=?', whereArgs: [acount.number]);
  }

  Future<void> close() async {
    Database db = await open_database();
    return await db.close();
  }
}
