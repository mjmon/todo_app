import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:rocket_todo/data/task_repository.dart';
import 'package:rocket_todo/ui/widgets/empty_builder.dart';

/// here all the tasks are displayed
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Task> taskList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Tasks")),
      body: StreamBuilder<List<Task>>(
        stream: context.read<TaskRepository>().getStream(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            final taskList = snapshot.data ?? [];

            if (taskList.isEmpty) {
              return const EmptyBuilder();
            }
            return ListView.builder(
                itemCount: taskList.length,
                itemBuilder: ((context, index) {
                  final task = taskList.elementAt(index);
                  return ListTile(
                    title: Text(task.taskTitle),
                  );
                }));
          } else if (snapshot.hasError) {
            return Center(
                child: Text("Has Error: ${snapshot.error.toString()}"));
          }
          return const Center(child: CupertinoActivityIndicator());
        }),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            context.read<TaskRepository>().add(Task.dummy());
          },
          label: const Text('Add Task')),
    );
  }
}
