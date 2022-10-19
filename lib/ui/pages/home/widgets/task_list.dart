import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:rocket_todo/state/bloc/task_bloc.dart';
import 'package:rocket_todo/ui/pages/create_edit/create_edit_page.dart';
import 'package:rocket_todo/ui/pages/home/widgets/empty_builder.dart';
import 'package:rocket_todo/ui/pages/home/widgets/task_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayMode = context.watch<TaskBloc>().state.displayMode;
    final allTaskList = context.watch<TaskBloc>().state.allTaskList;
    final activeTaskList = context.watch<TaskBloc>().state.activeTaskList;
    final completedTaskList = context.watch<TaskBloc>().state.completedTaskList;

    List<Task> list = [];
    if (displayMode == "All") {
      list = allTaskList;
    } else if (displayMode == "Active") {
      list = activeTaskList;
    } else if (displayMode == "Completed") {
      list = completedTaskList;
    }
    if (list.isEmpty) {
      return const EmptyBuilder();
    }
    return ListView.separated(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: list.length,
        itemBuilder: ((context, index) {
          final task = list.elementAt(index);
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
