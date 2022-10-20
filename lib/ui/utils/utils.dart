import 'dart:ffi';

import 'package:flutter/material.dart';

String getPriorityLabelFromValue(int value) {
  assert(value >= 1 && value <= 3);
  if (value == 3) {
    return "High";
  } else if (value == 2) {
    return "Normal";
  } else if (value == 1) {
    return "Low";
  }
  return '';
}

Color? getPriorityColorFromValue(int value) {
  assert(value >= 1 && value <= 3);
  if (value == 3) {
    return Colors.red;
  } else if (value == 2) {
    return Colors.orange;
  } else if (value == 1) {
    return Colors.grey;
  }
  return null;
}
