import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
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
  // use normal(2) as priority
  final priorityController = TextEditingController(text: 'Normal');

  final List<SelectedListItem> _priorityList = [
    SelectedListItem(
      name: 'High',
      value: "3",
      isSelected: false,
    ),
    SelectedListItem(
      name: "Normal",
      value: "2",
      isSelected: false,
    ),
    SelectedListItem(
      name: "Low",
      value: "1",
      isSelected: false,
    ),
  ];

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
      priorityController.text = widget.task.priority.toString();
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    descController.dispose();
    priorityController.dispose();
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
                  onTap: () {
                    DropDownState(
                      DropDown(
                        isSearchVisible: false,
                        bottomSheetTitle: const Text(
                          'Priority',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        submitButtonChild: const Text(
                          'Done',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        data: _priorityList,
                        listBuilder: (index) {
                          final prioItem = _priorityList.elementAt(index);
                          if (index == 0) {
                            //High
                            return Row(
                              children: [
                                Text(prioItem.name),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                )
                              ],
                            );
                          } else if (index == 1) {
                            return Row(
                              children: [
                                Text(prioItem.name),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle),
                                )
                              ],
                            );
                            //Normal
                          } else if (index == 2) {
                            return Row(
                              children: [
                                Text(prioItem.name),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      shape: BoxShape.circle),
                                )
                              ],
                            );
                            //Low
                          }
                          return const SizedBox();
                        },
                        enableMultipleSelection: false,
                      ),
                    ).showModal(context);
                  },
                  controller: priorityController,
                  readOnly: true,
                  // enabled: false,
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
