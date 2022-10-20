import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:rocket_todo/data/task_repository.dart';
import 'package:rocket_todo/state/bloc/task_bloc.dart';

final task1 =
    Task.empty().copyWith(id: 1, title: "Task 1", description: "Description 1");
final task2 =
    Task.empty().copyWith(id: 2, title: "Task 2", description: "Description 2");
final task3 =
    Task.empty().copyWith(id: 3, title: "Task 3", description: "Description 3");

class MockTaskRepository extends Mock implements TaskRepository {}

void main() {
  late TaskRepository taskRepository;

  setUp(() {
    taskRepository = MockTaskRepository();
    when(() => taskRepository.stream())
        .thenAnswer((_) => Stream.fromIterable([any, any]));
  });

  group("TaskBloc", () {
    test("initial state is TaskState.initial", () {
      final taskBloc = TaskBloc(taskRepository: taskRepository);
      expect(taskBloc.state, TaskState.initial());
    });
  });
}
