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
    on<TaskEvent>((event, emit) {
      event.map(
          fetch: (_Fetch e) {},
          add: (_Add e) {},
          edit: (_Edit e) {},
          delete: (_Delete e) {});
    });
  }
}
