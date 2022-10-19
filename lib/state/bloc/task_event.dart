part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.fetch({required List<Task> taskList}) = _Fetch;
  const factory TaskEvent.add({required Task task}) = _Add;
  const factory TaskEvent.edit({required Task task}) = _Edit;
  const factory TaskEvent.delete({required Task task}) = _Delete;
}
