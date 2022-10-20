import 'package:flutter_test/flutter_test.dart';
import 'package:rocket_todo/state/bloc/task_bloc.dart';

void main() {
  group("TaskState", () {
    test("supports value equality", () {
      expect(TaskState.initial(), TaskState.initial());
    });

    test("TaskState.initial is properly intitialized", () {
      expect(
          TaskState.initial(),
          const TaskState(
              allTaskList: [],
              activeTaskList: [],
              completedTaskList: [],
              displayMode: 'Active',
              sortBy: 'Name',
              isBusy: false,
              errorMessage: null,
              successMessage: null));
    });
  });
}
