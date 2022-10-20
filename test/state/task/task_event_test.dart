import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:rocket_todo/state/bloc/task_bloc.dart';

void main() {
  group("TaskEvent", () {
    group("fetch", () {
      test("supports value equality", () {
        expect(const TaskEvent.fetch(), const TaskEvent.fetch());
      });
    });

    group("add", () {
      test("supports value equality", () {
        expect(TaskEvent.add(task: Task.empty()),
            TaskEvent.add(task: Task.empty()));
      });
    });

    group("update", () {
      test("supports value equality", () {
        expect(TaskEvent.update(task: Task.empty()),
            TaskEvent.update(task: Task.empty()));
      });
    });

    group("delete", () {
      test("supports value equality", () {
        expect(TaskEvent.delete(task: Task.empty()),
            TaskEvent.delete(task: Task.empty()));
      });
    });

    group("changeDisplayMode", () {
      test("supports value equality", () {
        expect(const TaskEvent.changeDisplayMode(mode: 'All'),
            const TaskEvent.changeDisplayMode(mode: 'All'));
      });
    });

    group("changeSortby", () {
      test("supports value equality", () {
        expect(const TaskEvent.changeSortby(sortby: 'Name'),
            const TaskEvent.changeSortby(sortby: 'Name'));
      });
    });
  });
}
