import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_todo/state/bloc/task_bloc.dart';

class DisplayModeToggle extends StatelessWidget {
  const DisplayModeToggle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      buildWhen: (previous, current) =>
          previous.displayMode != current.displayMode ||
          previous.isBusy != current.isBusy ||
          previous.allTaskList != current.activeTaskList,
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Radio(
                  value: "Active",
                  groupValue: state.displayMode,
                  onChanged: (value) {
                    context
                        .read<TaskBloc>()
                        .add(const TaskEvent.changeDisplayMode(mode: "Active"));
                  },
                ),
                Text("Active (${state.activeTaskList.length})")
              ],
            ),
            Row(
              children: [
                Radio(
                  value: "Completed",
                  groupValue: state.displayMode,
                  onChanged: (value) {
                    context.read<TaskBloc>().add(
                        const TaskEvent.changeDisplayMode(mode: "Completed"));
                  },
                ),
                Text("Completed (${state.completedTaskList.length})")
              ],
            ),
            Row(
              children: [
                Radio(
                  value: "All",
                  groupValue: state.displayMode,
                  onChanged: (value) {
                    context
                        .read<TaskBloc>()
                        .add(const TaskEvent.changeDisplayMode(mode: "All"));
                  },
                ),
                Text("All (${state.allTaskList.length})")
              ],
            ),
          ],
        );
      },
    );
  }
}
