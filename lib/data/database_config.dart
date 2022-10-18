import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path/path.dart' as p;

Future<DatabaseConfig> initDatabase() async {
  final appDocDir = await getApplicationDocumentsDirectory();
  await appDocDir.create(recursive: true);
  // String dbPath = 'app.db';
  final path = p.join(appDocDir.path, 'app.db');
  final DatabaseFactory dbFactory = databaseFactoryIo;
  final Database db = await dbFactory.openDatabase(path);
  final StoreRef taskStore = intMapStoreFactory.store('task_store');

  final DatabaseConfig databaseConfig =
      DatabaseConfig(database: db, taskStore: taskStore);
  return databaseConfig;
}

/// object that stores the database config
class DatabaseConfig {
  final Database _database;
  final StoreRef _taskStore;

  const DatabaseConfig(
      {required Database database, required StoreRef taskStore})
      : _database = database,
        _taskStore = taskStore;

  Database get database => _database;
  StoreRef get taskStore => _taskStore;
}
