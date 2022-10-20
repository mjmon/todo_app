part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState({
    required List<Task> allTaskList,
    required List<Task> activeTaskList,
    required List<Task> completedTaskList,
    required String displayMode,
    required String sortBy,
    required bool isBusy,
    required String? errorMessage,
    required String? successMessage,
  }) = _TaskState;

  factory TaskState.initial() => const TaskState(
      allTaskList: [],
      activeTaskList: [],
      completedTaskList: [],
      displayMode: 'Active',
      sortBy: 'Name',
      isBusy: false,
      errorMessage: null,
      successMessage: null);
}
