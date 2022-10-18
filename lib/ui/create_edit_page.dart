import 'package:flutter/material.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_todo/data/task_repository.dart';
import 'package:rocket_todo/ui/popups/common_snack.dart';

class CreateEditPage extends StatefulWidget {
  const CreateEditPage({Key? key, required this.isNew, required this.task})
      : super(key: key);

  final bool isNew;
  final Task task;

  @override
  State<CreateEditPage> createState() => _CreateEditPageState();
}

class _CreateEditPageState extends State<CreateEditPage> {
  final _formKey = GlobalKey<FormState>();

  final titleController = TextEditingController();
  final descController = TextEditingController();

  @override
  void initState() {
    initFields();
    super.initState();
  }

  //initialize fields if is in EditMode
  initFields() {
    if (widget.isNew == false) {
      titleController.text = widget.task.title;
      descController.text = widget.task.description;
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    descController.dispose();
    super.dispose();
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
              TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                      hintText: 'Title',
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
              TextFormField(
                controller: descController,
                minLines: 3,
                maxLines: null,
                decoration: const InputDecoration(
                    hintText: 'Description',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Required field";
                  }
                  return null;
                },
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              final newTask = Task(
                  title: titleController.text.trim(),
                  description: descController.text.trim(),
                  priority: 2,
                  isComplete: false);

              await context.read<TaskRepository>().add(newTask);
              if (mounted) {
                final message = widget.isNew
                    ? "${newTask.title} is successfully added!"
                    : "${newTask.title} is successfully updated!";

                showSnack(context, message);
                Navigator.pop(context);
              }
            }
          },
          label: const Text('Save Task')),
    );
  }
}
