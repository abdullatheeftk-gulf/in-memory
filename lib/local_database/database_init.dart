import 'package:sqflite/sqflite.dart' as sql;

class DatabaseInit {
  static Future<sql.Database> db() async {
    return await sql.openDatabase(
      'in_memory.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createNoteTable(database);
        await createDayTable(database);
      },
      onConfigure: _onConfigure,
    );
  }

  static Future<void> _onConfigure(sql.Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

  static Future<void> createDayTable(sql.Database database) async {
    await database.execute('''CREATE TABLE IF NOT EXISTS Day (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                date_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
                time TEXT NOT NULL UNIQUE
              );
          ''');
  }

  static Future<void> createNoteTable(sql.Database database) async {
    await database.execute('''CREATE TABLE IF NOT EXISTS Note (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT CHECK(length(title) <= 64),
        description TEXT CHECK(length(description) <= 1028),
        date_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
        time TEXT NOT NULL,
        FOREIGN KEY (time) REFERENCES Day(time) ON UPDATE CASCADE ON DELETE CASCADE,
        CONSTRAINT check_title_description_not_empty CHECK (
            (title IS NOT NULL AND title <> '') OR 
            (description IS NOT NULL AND description <> '') OR
            (title IS NULL AND description IS NOT NULL AND description <> '') OR
            (description IS NULL AND title IS NOT NULL AND title <> '')
        )
      )
      ''');
  }

}
