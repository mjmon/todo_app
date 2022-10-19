import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';

Future<bool> showDeleteConfirmation(BuildContext context) async {
  final result = await showOkCancelAlertDialog(
      context: context,
      title: 'Confirmation',
      message: 'Are you sure you want to delete this task?',
      isDestructiveAction: true);

  return result == OkCancelResult.ok;
}

/// [currentSelected] is the current priority value of the task prior to updating it
Future<int?> showPrioritySelectPopup(BuildContext context,
    {int currentSelected = 2}) async {
  const priorityList = [
    {'key': 3, 'label': 'High'},
    {'key': 2, 'label': 'Normal'},
    {'key': 1, 'label': 'Low'}
  ];

  final result = await showConfirmationDialog(
      context: context,
      title: 'Select Priority Level',
      initialSelectedActionKey: currentSelected,
      actions: [
        ...priorityList.map((e) {
          final int key = e['key'] as int;
          final String label = e['label'] as String;
          return AlertDialogAction(
            key: key,
            label: label,
          );
        })
      ]);

  return result;
}
