import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:rocket_todo/ui/utils/utils.dart';

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
    {required int currentSelected}) async {
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

/// [currentSort] is the current priority value of the task prior to updating it
Future<String?> showSortSelectPopup(BuildContext context,
    {required String currentSort}) async {
  final result = await showConfirmationDialog(
      context: context,
      title: 'Sort By',
      initialSelectedActionKey: currentSort,
      actions: [
        const AlertDialogAction(
          key: 'Name',
          label: 'Name',
        ),
        const AlertDialogAction(
          key: 'Priority',
          label: 'Priority',
        ),
      ]);

  return result;
}
