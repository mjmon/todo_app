import 'package:flutter/material.dart';
import 'package:rocket_todo/core/model/task.dart';

class CreateEditPage extends StatelessWidget {
  const CreateEditPage({Key? key, required this.isNew, required this.task})
      : super(key: key);

  final bool isNew;
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isNew ? 'New Task' : 'Edit Task'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {}, label: const Text('Save Task')),
    );
  }
}
