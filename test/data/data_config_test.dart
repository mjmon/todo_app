import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rocket_todo/data/database_config.dart';
import 'package:sembast/sembast.dart';

void main() {
  late DatabaseConfig databaseConfig;

  setUp(() {
    databaseConfig = DatabaseConfig();
  });

  group("DatabaseConfig", () {
    test("instantiation create a DatabaseConfig instance", () {
      expect(databaseConfig, isInstanceOf<DatabaseConfig>());
    });

    test("instantiation contains instance of Database?", () {
      expect(databaseConfig.database, isInstanceOf<Database?>());
    });

    test("instantiation contains instance of StoreRef?", () {
      expect(databaseConfig.taskStore, isInstanceOf<StoreRef?>());
    });

    test("instantiation database is null ", () {
      expect(databaseConfig.database, isNull);
    });

    test("instantiation taskStore is null", () {
      expect(databaseConfig.taskStore, isNull);
    });

    // when(() => databaseConfig.initConfig());
    // test("initialization", () {
    //   expect(databaseConfig.database, isNotNull);
    // });
  });
}
