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
          fetch: (Fetch e) => _fetchTaskHandler(e, emit),
          add: (Add e) => _addTaskHandler(e, emit),
          update: (Update e) => _updateTaskHandler(e, emit),
          delete: (Delete e) => _deleteTaskhandler(e, emit),
          changeDisplayMode: (ChangeDisplayMode e) =>
              _changeDisplayHandler(e, emit),
          changeSortby: (ChangeSortby e) => _changeSortbyHandler(e, emit));
    });
  }

  Future<void> _fetchTaskHandler(Fetch e, Emitter<TaskState> emit) async {
    try {
      emit(state.copyWith(isBusy: true));
      List<Task> kAllTaskList = await _taskRepository.fetch();
      //sorting
      if (state.sortBy == "Name") {
        kAllTaskList.sort((a, b) => a.title.compareTo(b.title));
      } else if (state.sortBy == "Priority") {
        kAllTaskList.sort((a, b) => b.priority.compareTo(a.priority));
      }

      final kActiveTaskList = [
        ...kAllTaskList.where((task) => task.isComplete == false)
      ];
      final kCompletedTaskList = [
        ...kAllTaskList.where((task) => task.isComplete)
      ];

      emit(state.copyWith(
          allTaskList: kAllTaskList,
          activeTaskList: kActiveTaskList,
          completedTaskList: kCompletedTaskList,
          isBusy: false,
          errorMessage: null));
    } catch (e) {
      emit(state.copyWith(
          isBusy: false, errorMessage: "Failed in fetching tasks: $e"));
    }
  }

  Future<void> _addTaskHandler(Add e, Emitter<TaskState> emit) async {
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

  Future<void> _updateTaskHandler(Update e, Emitter<TaskState> emit) async {
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

  Future<void> _deleteTaskhandler(Delete e, Emitter<TaskState> emit) async {
    try {
      emit(state.copyWith(isBusy: true));
      await _taskRepository.delete(e.task);
      emit(state.copyWith(
          isBusy: false,
          successMessage: "Successfully deleted",
          errorMessage: null));
    } catch (e) {
      emit(state.copyWith(
          isBusy: false,
          successMessage: null,
          errorMessage: "Failed in deleting task: $e"));
    }
  }

  Future<void> _changeDisplayHandler(
      ChangeDisplayMode e, Emitter<TaskState> emit) async {
    emit(state.copyWith(displayMode: e.mode));
  }

  Future<void> _changeSortbyHandler(
      ChangeSortby e, Emitter<TaskState> emit) async {
    emit(state.copyWith(sortBy: e.sortby));

    List<Task> kAllTaskList = [...state.allTaskList];
    //sorting
    if (state.sortBy == "Name") {
      kAllTaskList.sort((a, b) => a.title.compareTo(b.title));
    } else if (state.sortBy == "Priority") {
      kAllTaskList.sort((a, b) => b.priority.compareTo(a.priority));
    }

    final kActiveTaskList = [
      ...kAllTaskList.where((task) => task.isComplete == false)
    ];
    final kCompletedTaskList = [
      ...kAllTaskList.where((task) => task.isComplete)
    ];

    emit(state.copyWith(
      allTaskList: kAllTaskList,
      activeTaskList: kActiveTaskList,
      completedTaskList: kCompletedTaskList,
    ));
  }
}
