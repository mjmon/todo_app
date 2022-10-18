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

Future<int?> showPrioritySelectPopup(BuildContext context) async {
  final result = await showConfirmationDialog(
      context: context,
      title: 'Select Priority Level',
      actions: [
        const AlertDialogAction(key: 3, label: 'High'),
        const AlertDialogAction(key: 2, label: 'Normal'),
        const AlertDialogAction(key: 1, label: 'Low')
      ]);

  return result;
}
