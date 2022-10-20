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
          .thenAnswer((_) => Stream.fromIterable([[]]));
      taskBloc = TaskBloc(taskRepository: taskRepository);
    });

    test("initial state is TaskState.initial", () {
      taskBloc = TaskBloc(taskRepository: taskRepository);
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
            when(() => taskRepository.fetch()).thenThrow('test error');
          },
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [TaskState.initial().copyWith(isBusy: false)]);
    });

    group("Add", () {
      blocTest<TaskBloc, TaskState>("success emits state below",
          setUp: () {
            when(() => taskRepository.add(Task.dummy()))
                .thenAnswer((_) async => {});
            when(() => taskRepository.stream())
                .thenAnswer((_) => Stream.fromIterable([[]]));
            when(() => taskRepository.fetch()).thenAnswer((_) async => []);
          },
          act: (bloc) => bloc.add(TaskEvent.add(task: Task.dummy())),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(
                    isBusy: true, successMessage: null, errorMessage: null),
                TaskState.initial().copyWith(
                    isBusy: false,
                    successMessage: "Successfully added!",
                    errorMessage: null)
              ]);

      blocTest<TaskBloc, TaskState>("failure emits state below",
          setUp: () {
            when(() => taskRepository.add(Task.dummy()))
                .thenThrow("test error");
            when(() => taskRepository.stream())
                .thenAnswer((_) => Stream.fromIterable([[]]));
            when(() => taskRepository.fetch()).thenAnswer((_) async => []);
          },
          act: (bloc) => bloc.add(TaskEvent.add(task: Task.dummy())),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(
                    isBusy: true, successMessage: null, errorMessage: null),
                TaskState.initial().copyWith(
                    isBusy: false,
                    successMessage: null,
                    errorMessage: "Failed in adding task: test error")
              ]);
    });

    group("Update", () {
      blocTest<TaskBloc, TaskState>("success emits state below",
          setUp: () {
            when(() => taskRepository.update(Task.dummy()))
                .thenAnswer((_) async => {});
            when(() => taskRepository.stream())
                .thenAnswer((_) => Stream.fromIterable([[]]));
            when(() => taskRepository.fetch()).thenAnswer((_) async => []);
          },
          act: (bloc) => bloc.add(TaskEvent.update(task: Task.dummy())),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(
                    isBusy: true, successMessage: null, errorMessage: null),
                TaskState.initial().copyWith(
                    isBusy: false,
                    successMessage: "Successfully updated!",
                    errorMessage: null)
              ]);

      blocTest<TaskBloc, TaskState>("failure emits state below",
          setUp: () {
            when(() => taskRepository.update(Task.dummy()))
                .thenThrow("test error");
            when(() => taskRepository.stream())
                .thenAnswer((_) => Stream.fromIterable([[]]));
            when(() => taskRepository.fetch()).thenAnswer((_) async => []);
          },
          act: (bloc) => bloc.add(TaskEvent.update(task: Task.dummy())),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(
                    isBusy: true, successMessage: null, errorMessage: null),
                TaskState.initial().copyWith(
                    isBusy: false,
                    successMessage: null,
                    errorMessage: "Failed in updating task: test error")
              ]);
    });

    group("Delete", () {
      blocTest<TaskBloc, TaskState>("success emits state below",
          setUp: () {
            when(() => taskRepository.delete(Task.dummy()))
                .thenAnswer((_) async => {});
            when(() => taskRepository.stream())
                .thenAnswer((_) => Stream.fromIterable([[]]));
            when(() => taskRepository.fetch()).thenAnswer((_) async => []);
          },
          act: (bloc) => bloc.add(TaskEvent.delete(task: Task.dummy())),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(
                    isBusy: true, successMessage: null, errorMessage: null),
                TaskState.initial().copyWith(
                    isBusy: false,
                    successMessage: "Successfully deleted!",
                    errorMessage: null)
              ]);

      blocTest<TaskBloc, TaskState>("failure emits state below",
          setUp: () {
            when(() => taskRepository.delete(Task.dummy()))
                .thenThrow("test error");
            when(() => taskRepository.stream())
                .thenAnswer((_) => Stream.fromIterable([[]]));
            when(() => taskRepository.fetch()).thenAnswer((_) async => []);
          },
          act: (bloc) => bloc.add(TaskEvent.delete(task: Task.dummy())),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(
                    isBusy: true, successMessage: null, errorMessage: null),
                TaskState.initial().copyWith(
                    isBusy: false,
                    successMessage: null,
                    errorMessage: "Failed in deleting task: test error")
              ]);
    });

    group("ChangeDisplayMode", () {
      test("initial value is Active", () {
        expect(taskBloc.state.displayMode, "Active");
      });

      blocTest<TaskBloc, TaskState>("change to All",
          setUp: () {},
          act: (bloc) =>
              bloc.add(const TaskEvent.changeDisplayMode(mode: "All")),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(displayMode: "All"),
              ]);

      blocTest<TaskBloc, TaskState>("change to Active",
          setUp: () {},
          act: (bloc) =>
              bloc.add(const TaskEvent.changeDisplayMode(mode: "Active")),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(displayMode: "Active"),
              ]);

      blocTest<TaskBloc, TaskState>("change to Completed",
          setUp: () {},
          act: (bloc) =>
              bloc.add(const TaskEvent.changeDisplayMode(mode: "Completed")),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(displayMode: "Completed"),
              ]);
    });

    group("ChangeSortby", () {
      test("initial value is Name", () {
        expect(taskBloc.state.sortBy, "Name");
      });

      blocTest<TaskBloc, TaskState>("change to Priority",
          setUp: () {},
          act: (bloc) =>
              bloc.add(const TaskEvent.changeSortby(sortby: "Priority")),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(sortBy: "Priority"),
              ]);

      blocTest<TaskBloc, TaskState>("change to Name",
          setUp: () {},
          act: (bloc) => bloc.add(const TaskEvent.changeSortby(sortby: "Name")),
          build: () => TaskBloc(taskRepository: taskRepository),
          expect: () => [
                TaskState.initial().copyWith(sortBy: "Name"),
              ]);
    });
  });
}
