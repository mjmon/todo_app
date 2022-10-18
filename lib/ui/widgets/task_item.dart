import 'package:flutter/material.dart';
import 'package:rocket_todo/core/model/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(
      {Key? key,
      required this.task,
      required this.onCompleteToggle,
      required this.onView})
      : super(key: key);

  final Task task;
  final void Function(bool?)? onCompleteToggle;
  final void Function() onView;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onView,
      child: Row(
        children: [
          Checkbox(value: task.isComplete, onChanged: onCompleteToggle),
          Text(
            "${task.id} ${task.taskTitle}",
            style: task.isComplete
                ? const TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  )
                : null,
          )
        ],
      ),
    );
  }
}
