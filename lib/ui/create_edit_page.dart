import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_todo/data/task_repository.dart';
import 'package:rocket_todo/state/bloc/task_bloc.dart';
import 'package:rocket_todo/ui/popups/common_dialogs.dart';
import 'package:rocket_todo/ui/popups/common_snack.dart';
import 'package:rocket_todo/ui/utils/utils.dart';
import 'package:tap_debouncer/tap_debouncer.dart';

class CreateEditPage extends StatefulWidget {
  const CreateEditPage({Key? key, required this.isNew, required this.task})
      : super(key: key);

  /// if this is false, means that the user is editing the task
  final bool isNew;
  final Task task;

  @override
  State<CreateEditPage> createState() => _CreateEditPageState();
}

class _CreateEditPageState extends State<CreateEditPage> {
  final _formKey = GlobalKey<FormState>();

  final titleController = TextEditingController();
  final descController = TextEditingController();
  // use normal(2) as priority
  final priorityController = TextEditingController(text: 'Normal');
  int priorityValue = 2;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      initFields();
    });
    super.initState();
  }

  //initialize fields if is in EditMode
  initFields() {
    if (widget.isNew == false) {
      titleController.text = widget.task.title;
      descController.text = widget.task.description;
      priorityController.text = getPriorityLabelFromValue(widget.task.priority);
      setState(() {
        priorityValue = widget.task.priority;
      });
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    descController.dispose();
    priorityController.dispose();
    super.dispose();
  }

  Future<void> handleAddEdit() async {
    if (_formKey.currentState!.validate()) {
      final newTask = widget.isNew
          ? Task(
              title: titleController.text.trim(),
              description: descController.text.trim(),
              priority: priorityValue,
              isComplete: false)
          : widget.task.copyWith(
              title: titleController.text.trim(),
              description: descController.text.trim(),
              priority: priorityValue,
            );

      if (widget.isNew) {
        // add new task
        context.read<TaskBloc>().add(TaskEvent.add(task: newTask));
      } else {
        //update the task
        context.read<TaskBloc>().add(TaskEvent.update(task: newTask));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isNew ? 'New Task' : 'Edit Task'),
      ),
      body: Form(
          key: _formKey,
          child: ListView(
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.all(10),
            children: [
              const Text("Title"),
              const SizedBox(
                height: 3,
              ),
              TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return "Required field";
                    }
                    return null;
                  })),
              const SizedBox(
                height: 10,
              ),
              const Text("Description"),
              const SizedBox(
                height: 3,
              ),
              TextFormField(
                controller: descController,
                minLines: 3,
                maxLines: null,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Required field";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Priority"),
              const SizedBox(
                height: 3,
              ),
              TextFormField(
                  onTap: () async {
                    // show selection of priority level
                    final result = await showPrioritySelectPopup(context,
                        currentSelected: priorityValue);

                    if (result != null) {
                      setState(() {
                        priorityController.text =
                            getPriorityLabelFromValue(result);
                        priorityValue = result;
                      });
                    }
                  },
                  controller: priorityController,
                  readOnly: true,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return "Required field";
                    }
                    return null;
                  })),
            ],
          )),
      floatingActionButton: BlocListener<TaskBloc, TaskState>(
        listenWhen: (previous, current) => previous.isBusy != current.isBusy,
        listener: (context, state) async {
          if (state.isBusy == false) {
            if (state.errorMessage != null) {
              showSnack(context, state.errorMessage ?? '');
            } else if (state.successMessage != null) {
              showSnack(context, state.successMessage ?? '');
            }
            await Future.delayed(const Duration(milliseconds: 200), () {
              Navigator.pop(context);
            });
          }
        },
        child: TapDebouncer(
            onTap: handleAddEdit,
            cooldown: const Duration(milliseconds: 300),
            builder: (context, ontap) {
              return FloatingActionButton.extended(
                  onPressed: ontap,
                  label: Text(widget.isNew ? 'Save' : 'Update'));
            }),
      ),
    );
  }
}
