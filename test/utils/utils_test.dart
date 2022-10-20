import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rocket_todo/ui/utils/utils.dart';

void main() {
  group("getPriorityLabelFromValue", () {
    test("throws Assertion Error when not in range between (1, 2, 3)", () {
      expect(() => getPriorityLabelFromValue(-1), throwsAssertionError);
    });

    test("when value is 3, returns High", () {
      expect(getPriorityLabelFromValue(3), "High");
    });

    test("when value is 2, returns Normal", () {
      expect(getPriorityLabelFromValue(2), "Normal");
    });

    test("when value is 1, returns Low", () {
      expect(getPriorityLabelFromValue(1), "Low");
    });
  });

  group("getPriorityColorFromValue", () {
    test("throws Assertion Error when not in range between (1, 2, 3)", () {
      expect(() => getPriorityColorFromValue(-1), throwsAssertionError);
    });

    test("when value is 3, returns Colors.red", () {
      expect(getPriorityColorFromValue(3), Colors.red);
    });

    test("when value is 2, returns Normal", () {
      expect(getPriorityColorFromValue(2), Colors.orange);
    });

    test("when value is 1, returns Low", () {
      expect(getPriorityColorFromValue(1), Colors.grey);
    });
  });
}
