import 'package:flutterlearnplan/const/export.dart';

class DDBHelper {
  static Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await initDB();
    return _db!;
  }

  initDB() async {
    String path = join(await getDatabasesPath(), 'todo.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE todos(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          description TEXT
        )
      ''');
      },
    );
  }

  Future<int> insert(Todo todo) async {
    final dbClient = await db;
    return await dbClient.insert('todos', todo.toMap());
  }

  Future<List<Todo>> getTodos() async {
    final dbClient = await db;
    final List<Map<String, dynamic>> maps = await dbClient.query('todos');
    return List.generate(maps.length, (i) => Todo.fromMap(maps[i]));
  }

  Future<int> update(Todo todo) async {
    final dbClient = await db;
    return await dbClient.update(
      'todos',
      todo.toMap(),
      where: 'id = ?',
      whereArgs: [todo.id],
    );
  }

  Future<int> delete(int id) async {
    final dbClient = await db;
    return await dbClient.delete('todos', where: 'id = ?', whereArgs: [id]);
  }
}
