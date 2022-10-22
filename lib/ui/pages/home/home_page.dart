import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:rocket_todo/data/task_repository.dart';
import 'package:rocket_todo/state/bloc/task_bloc.dart';
import 'package:rocket_todo/ui/pages/create_edit/create_edit_page.dart';
import 'package:rocket_todo/ui/pages/home/widgets/display_mode_toggle.dart';
import 'package:rocket_todo/ui/pages/home/widgets/empty_builder.dart';
import 'package:rocket_todo/ui/pages/home/widgets/error_builder.dart';
import 'package:rocket_todo/ui/pages/home/widgets/loader.dart';
import 'package:rocket_todo/ui/pages/home/widgets/task_list.dart';
import 'package:rocket_todo/ui/popups/common_dialogs.dart';
import 'package:rocket_todo/ui/popups/common_snack.dart';
import 'package:rocket_todo/ui/pages/home/widgets/task_item.dart';

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
    final sortBy = context.watch<TaskBloc>().state.sortBy;

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tasks"),
        actions: [
          IconButton(
              onPressed: () async {
                await showSortSelectPopup(context, currentSort: sortBy)
                    .then((result) {
                  if (result != null) {
                    context
                        .read<TaskBloc>()
                        .add(TaskEvent.changeSortby(sortby: result));
                  }
                });
              },
              icon: const Icon(Icons.sort))
        ],
      ),
      body: BlocConsumer<TaskBloc, TaskState>(
        listenWhen: (previous, current) =>
            previous.errorMessage != current.errorMessage ||
            previous.successMessage != current.successMessage,
        listener: (context, state) {
          if (state.errorMessage != null) {
            showSnack(context, state.errorMessage ?? '');
          } else if (state.successMessage != null) {
            showSnack(context, state.successMessage ?? '');
          }
        },
        buildWhen: (previous, current) => true,
        builder: (context, state) {
          if (state.isBusy) {
            return const Loader();
          } else {
            if (state.errorMessage != null) {
              return const ErrorBuilder();
            }
            return Column(
              children: const [
                DisplayModeToggle(),
                Expanded(child: TaskList()),
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
}
