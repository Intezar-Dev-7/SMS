import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SMSDatabase {
  // Private named constructor
  SMSDatabase._();

  // Singleton instance of database class
  static final SMSDatabase getInstance = SMSDatabase._();

  Database? groupDB;

  Future<Database> getDB() async {
    groupDB ??= await openDB();
    return groupDB!;
  }

  // Function to open or create db
  Future<Database> openDB() async {
    Directory appDir = await getApplicationDocumentsDirectory();

    String dbPath = join(appDir.path, "numbersDatabase.db");
    print("Database path: $dbPath");
    return await openDatabase(
      dbPath,
      onCreate: (db, version) {
        db.execute(
          "CREATE TABLE GroupNumbers (groupName TEXT PRIMARY KEY, groupValues INT PRIMARY KEY )",
        );
      },
      version: 1,
    );
  }

  // Function to add Groups and its values

  // Function to delete Groups
}
