import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:rocket_todo/data/task_repository.dart';
import 'package:rocket_todo/ui/create_edit_page.dart';
import 'package:rocket_todo/ui/dialogs/common_dialogs.dart';
import 'package:rocket_todo/ui/dialogs/common_snack.dart';
import 'package:rocket_todo/ui/widgets/empty_builder.dart';
import 'package:rocket_todo/ui/widgets/error_builder.dart';
import 'package:rocket_todo/ui/widgets/loader.dart';
import 'package:rocket_todo/ui/widgets/task_item.dart';

/// here all the tasks are displayed
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            } else {
              return _buildList(taskList);
            }
          } else if (snapshot.hasError) {
            return const ErrorBuilder();
          } else {
            return const Loader();
          }
        }),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            // Create new task
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => CreateEditPage(
                          isNew: true,
                          task: Task.empty(),
                        ))));
            // context.read<TaskRepository>().add(Task.dummy());
          },
          label: const Text('Add Task')),
    );
  }

  Widget _buildList(List<Task> taskList) {
    return ListView.separated(
        physics: const ClampingScrollPhysics(),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: taskList.length,
        itemBuilder: ((context, index) {
          final task = taskList.elementAt(index);
          return TaskItem(
            task: task,
            onCompleteToggle: (bool? newValue) {
              // Toggle the complete status
              final updatedTask = task.copyWith(isComplete: newValue ?? false);
              context.read<TaskRepository>().update(updatedTask);
              final message = newValue == true
                  ? "${updatedTask.title} is marked as `Completed`"
                  : "${updatedTask.title} is resumed!";
              showSnack(context, message);
            },
            onView: () {
              // Edit the task
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => CreateEditPage(
                            isNew: false,
                            task: task,
                          ))));
            },
            onDelete: () {
              // delete task
              context.read<TaskRepository>().delete(task);
              showSnack(context, "${task.title} is successfully deleted!");
            },
            onChangePriority: (newValue) {},
          );
        }));
  }
}
