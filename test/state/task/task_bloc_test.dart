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
  group("TaskBloc", () {
    late TaskRepository taskRepository;
    late TaskBloc taskBloc;

    setUp(() {
      taskRepository = MockTaskRepository();
      when(() => taskRepository.stream())
          .thenAnswer((_) => Stream.fromIterable([
                [task1, task2, task3]
              ]));
      // when(() => taskRepository.fetch())
      //     .thenAnswer((_) async => [task1, task2, task3]);
      // when(() => taskRepository.add(task1));
      // when(() => taskRepository.update(task1));
      // when(() => taskRepository.delete(task1));
      taskBloc = TaskBloc(taskRepository: taskRepository);
    });

    test("initial state is TaskState.initial", () {
      final taskBloc = TaskBloc(taskRepository: taskRepository);
      expect(taskBloc.state, TaskState.initial());
    });

    group("Fetch", () {
      blocTest<TaskBloc, TaskState>("success emits state below",
          setUp: () {
            when(() => taskRepository.stream())
                .thenAnswer((_) => Stream.fromIterable([
                      [task1, task2, task3]
                    ]));
            when(() => taskRepository.fetch())
                .thenAnswer((_) async => [task1, task2, task3]);
          },
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(
                    allTaskList: [task1, task2, task3],
                    activeTaskList: [task1, task2, task3],
                    isBusy: false)
              ]);

      blocTest<TaskBloc, TaskState>("failure emits state below",
          setUp: () {
            when(() => taskRepository.stream())
                .thenAnswer((_) => Stream.fromIterable([
                      [task1, task2, task3]
                    ]));
            when(() => taskRepository.fetch()).thenThrow('some error');
          },
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(
                    isBusy: false,
                    errorMessage: "Failed in fetching tasks: some error")
              ]);
    });

    group("Add", () {
      blocTest<TaskBloc, TaskState>("success emits state below",
          setUp: () {
            when(() => taskRepository.stream())
                .thenAnswer((_) => Stream.fromIterable([
                      [task1, task2, task3]
                    ]));
            when(() => taskRepository.fetch())
                .thenAnswer((_) async => [task1, task2, task3]);
            when(() => taskRepository.add(Task.dummy()))
                .thenAnswer((_) async => {});
          },
          act: (bloc) => bloc.add(TaskEvent.add(task: Task.dummy())),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(isBusy: true),
                TaskState.initial().copyWith(
                    allTaskList: [task1, task2, task3],
                    activeTaskList: [task1, task2, task3],
                    isBusy: false),
                TaskState.initial().copyWith(
                    isBusy: false,
                    successMessage: "Successfully added!",
                    errorMessage: null)
              ]);

      // blocTest<TaskBloc, TaskState>("failure emits state below",
      //     setUp: () {
      //       when(() => taskRepository.stream())
      //           .thenAnswer((_) => Stream.fromIterable([
      //                 [task1, task2, task3]
      //               ]));
      //       when(() => taskRepository.fetch()).thenThrow('some error');
      //     },
      //     build: () => TaskBloc(taskRepository: taskRepository),
      //     expect: () => [
      //           TaskState.initial().copyWith(isBusy: true),
      //           TaskState.initial().copyWith(
      //               isBusy: false,
      //               errorMessage: "Failed in fetching tasks: some error")
      //         ]);
    });
  });
}
