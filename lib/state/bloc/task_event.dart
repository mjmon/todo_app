part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.fetch() = Fetch;
  const factory TaskEvent.add({required Task task}) = Add;
  const factory TaskEvent.update({required Task task}) = Update;
  const factory TaskEvent.delete({required Task task}) = Delete;
}
