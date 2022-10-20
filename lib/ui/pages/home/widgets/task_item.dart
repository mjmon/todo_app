import 'package:flutter/material.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:rocket_todo/ui/popups/common_dialogs.dart';
import 'package:rocket_todo/ui/utils/utils.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key? key,
    required this.task,
    required this.onCompleteToggle,
    required this.onView,
    required this.onDelete,
  }) : super(key: key);

  final Task task;
  final void Function(bool? newValue)? onCompleteToggle;
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.title,
                    overflow: TextOverflow.ellipsis,
                    style: task.isComplete
                        ? const TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          )
                        : null,
                  ),
                  Text(
                    task.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: task.isComplete
                        ? Theme.of(context).textTheme.caption!.copyWith(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough)
                        : Theme.of(context).textTheme.caption,
                  ),
                  Builder(builder: (context) {
                    final label = getPriorityLabelFromValue(task.priority);
                    final color = getPriorityColorFromValue(task.priority);

                    return Text(
                      label,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(color: color),
                    );
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
