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
