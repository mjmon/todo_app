import 'package:flutter_test/flutter_test.dart';
import 'package:rocket_todo/core/model/task.dart';

void main() {
  group("Task", () {
    test("uses value equality", () {
      expect(Task.empty(), Task.empty());
    });

    test("empty is properly initialized", () {
      expect(
          Task.empty(),
          const Task(
              title: '', description: '', priority: 2, isComplete: false));
    });

    test("id for empty object should be null", () {
      expect(Task.empty().id, null);
    });
  });
}
