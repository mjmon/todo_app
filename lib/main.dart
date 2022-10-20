import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_todo/data/database_config.dart';
import 'package:rocket_todo/data/task_repository.dart';
import 'package:rocket_todo/state/bloc/task_bloc.dart';
import 'package:rocket_todo/ui/pages/home/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initialize database config
  final DatabaseConfig databaseConfig = DatabaseConfig();
  await databaseConfig.initConfig();
  //Provide instance of the databaseConfig db and store to the TaskRepository
  runApp(
    RepositoryProvider(
      create: (context) => TaskRepository(
          database: databaseConfig.database!,
          taskStore: databaseConfig.taskStore!),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TaskBloc(taskRepository: context.read<TaskRepository>()),
      child: MaterialApp(
        title: 'Rocket Todo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: const HomePage(),
      ),
    );
  }
}
