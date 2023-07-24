import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import '../models/activity_model.dart';

final String tableReminder = 'reminder';
final String columnId = 'id';
final String columnTittle = 'tittle';
final String columnDateTime = 'reminderDateTime';
final String columnPending = 'isPending';

class ReminderHelper {
  static late Database _database;
  static late ReminderHelper _reminderHelper;

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    var dir = await getDatabasesPath();
    var path = dir + "reminder.db";

    var database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          create table $tableReminder(
            $columnId integer primary key autoincrement,
            $columnTittle text not null,
            $columnDateTime text not null,
            $columnPending integer,
          )
        ''');
      },
    );
    return database;
  }

  void insertReminder(ReminderInfo reminderInfo) async {
    var db = await this.database;
    var result = await db.insert(tableReminder, reminderInfo.toJson());
    print('result: $result');
  }
}
