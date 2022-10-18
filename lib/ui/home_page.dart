import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:rocket_todo/data/task_repository.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getData();
    });
  }

  Future<void> getData() async {
    final data = await context.read<TaskRepository>().get();
    setState(() {
      taskList = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Tasks")),
      body: RefreshIndicator(
        onRefresh: () async {
          getData();
        },
        child: ListView.builder(
          itemCount: taskList.length,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final task = taskList.elementAt(index);
            return CheckboxListTile(
              value: task.isComplete,
              onChanged: (newValue) {},
              title: Text("${task.id} ${task.taskTitle}"),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            context.read<TaskRepository>().add(Task.dummy());
            final data = await context.read<TaskRepository>().get();
            setState(() {
              taskList = data;
            });
          },
          label: const Text('Add Task')),
    );
  }
}
