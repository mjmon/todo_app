import 'dart:ffi';

import 'package:flutter/material.dart';

/// used to display the corresponding string for each priority
/// 
/// restricts the value to be within (1-3) range
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

/// used to display the corresponding color for each priority
/// 
/// restricts the value to be within (1-3) range
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
