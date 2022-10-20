import 'package:flutter/material.dart';

/// wrapper for snackbar
showSnack(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
