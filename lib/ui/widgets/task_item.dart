import 'package:flutter/material.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:rocket_todo/ui/dialogs/common_dialogs.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key? key,
    required this.task,
    required this.onCompleteToggle,
    required this.onChangePriority,
    required this.onView,
    required this.onDelete,
  }) : super(key: key);

  final Task task;
  final void Function(bool? newValue)? onCompleteToggle;
  final void Function(int newValue) onChangePriority;
  final void Function() onView;
  final void Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(task.id.toString()),
      background: Container(color: Colors.red),
      confirmDismiss: (dismissDirection) async {
        // show delete confirmation
        final isOk = await showDeleteConfirmation(context);
        if (isOk) {
          onDelete();
        }
        return null;
      },
      child: InkWell(
        onTap: onView,
        child: Row(
          children: [
            Checkbox(value: task.isComplete, onChanged: onCompleteToggle),
            Text(
              "${task.id} ${task.title}",
              style: task.isComplete
                  ? const TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    )
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
