import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:rocket_todo/data/task_repository.dart';
import 'package:rocket_todo/state/bloc/task_bloc.dart';
import 'package:rocket_todo/ui/pages/create_edit/create_edit_page.dart';
import 'package:rocket_todo/ui/pages/home/widgets/empty_builder.dart';
import 'package:rocket_todo/ui/pages/home/widgets/error_builder.dart';
import 'package:rocket_todo/ui/pages/home/widgets/loader.dart';
import 'package:rocket_todo/ui/popups/common_dialogs.dart';
import 'package:rocket_todo/ui/popups/common_snack.dart';
import 'package:rocket_todo/ui/pages/home/widgets/task_item.dart';

/// here all the tasks are displayed
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Tasks")),
      body: BlocConsumer<TaskBloc, TaskState>(
        listenWhen: (previous, current) => previous.isBusy != current.isBusy,
        listener: (context, state) {},
        buildWhen: (previous, current) => previous.isBusy != current.isBusy,
        builder: (context, state) {
          if (state.isBusy) {
            return const Loader();
          } else {
            if (state.errorMessage != null) {
              return const ErrorBuilder();
            }
            if (state.taskList.isEmpty) {
              return const EmptyBuilder();
            }
            return Column(
              children: [
                _buildDisplayToggle(),
                Expanded(child: _buildList(state.taskList)),
              ],
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            // Navigate to Create Edit Page
            // Pass a Task.empty() object if its a new task
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => CreateEditPage(
                          isNew: true,
                          task: Task.empty(),
                        ))));
          },
          label: const Text('Add Task')),
    );
  }

  Widget _buildDisplayToggle() {
    return BlocBuilder<TaskBloc, TaskState>(
      buildWhen: (previous, current) =>
          previous.displayMode != current.displayMode ||
          previous.isBusy != current.isBusy,
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Radio(
                  value: "All",
                  groupValue: state.displayMode,
                  onChanged: (value) {},
                ),
                Text("All (${state.taskList.length})")
              ],
            ),
            Row(
              children: [
                Radio(
                  value: "Active",
                  groupValue: state.displayMode,
                  onChanged: (value) {},
                ),
                Text("Active (${state.activeTaskList.length})")
              ],
            ),
            Row(
              children: [
                Radio(
                  value: "Completed",
                  groupValue: state.displayMode,
                  onChanged: (value) {},
                ),
                Text("Completed (${state.completedTaskList.length})")
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildList(List<Task> taskList) {
    return ListView.separated(
        shrinkWrap: true,
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
              context.read<TaskBloc>().add(TaskEvent.update(task: updatedTask));
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
              context.read<TaskBloc>().add(TaskEvent.delete(task: task));
            },
            onChangePriority: (newValue) {},
          );
        }));
  }
}
