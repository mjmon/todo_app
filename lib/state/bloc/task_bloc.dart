import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:rocket_todo/data/task_repository.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskRepository _taskRepository;

  TaskBloc({required TaskRepository taskRepository})
      : _taskRepository = taskRepository,
        super(TaskState.initial()) {
    _taskRepository.stream().listen(((_) {
      add(const TaskEvent.fetch());
    }));

    on<TaskEvent>((event, emit) async {
      await event.map(
          fetch: (Fetch e) => fetchTaskHandler(e, emit),
          add: (Add e) => addTaskHandler(e, emit),
          update: (Update e) => updateTaskHandler(e, emit),
          delete: (Delete e) {});
    });
  }

  Future<void> fetchTaskHandler(Fetch e, Emitter<TaskState> emit) async {
    try {
      emit(state.copyWith(isBusy: true));
      final taskList = await _taskRepository.fetch();
      emit(state.copyWith(
          taskList: taskList, isBusy: false, errorMessage: null));
    } catch (e) {
      emit(state.copyWith(
          isBusy: false, errorMessage: "Failed in fetching tasks: $e"));
    }
  }

  Future<void> addTaskHandler(Add e, Emitter<TaskState> emit) async {
    try {
      emit(state.copyWith(isBusy: true));
      await _taskRepository.add(e.task);
      emit(state.copyWith(
          isBusy: false,
          successMessage: "Successfully added!",
          errorMessage: null));
    } catch (e) {
      emit(state.copyWith(
          isBusy: false,
          successMessage: null,
          errorMessage: "Failed in adding task: $e"));
    }
  }

  Future<void> updateTaskHandler(Update e, Emitter<TaskState> emit) async {
    try {
      emit(state.copyWith(isBusy: true));
      await _taskRepository.update(e.task);
      emit(state.copyWith(
          isBusy: false,
          successMessage: "Successfully updated!",
          errorMessage: null));
    } catch (e) {
      emit(state.copyWith(
          isBusy: false,
          successMessage: null,
          errorMessage: "Failed in updating task: $e"));
    }
  }
}
