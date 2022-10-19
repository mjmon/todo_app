part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState(
      {required List<Task> taskList,
      required List<Task> activeTaskList,
      required List<Task> completedTaskList,
      required bool isBusy,
      required String errorMessage,
      required String successMessage}) = _TaskState;

  factory TaskState.initial() => const TaskState(
      taskList: [],
      activeTaskList: [],
      completedTaskList: [],
      isBusy: false,
      errorMessage: '',
      successMessage: '');
}
