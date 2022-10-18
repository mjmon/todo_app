import 'package:flutter/material.dart';

String? getPriorityLabelFromValue(int value) {
  if (value == 3) {
    return "High";
  } else if (value == 2) {
    return "Normal";
  } else if (value == 1) {
    return "Low";
  }
  return null;
}

Color? getPriorityColorFromValue(int value) {
  if (value == 3) {
    return Colors.red;
  } else if (value == 2) {
    return Colors.orange;
  } else if (value == 1) {
    return Colors.yellow;
  }
  return null;
}
