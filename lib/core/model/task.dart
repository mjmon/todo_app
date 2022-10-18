import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  // id will be gotten from the database.
  // It's automatically generated & unique for every stored Task.
  const factory Task(
      {int? id, required String taskTitle, required bool isComplete}) = _Task;

  factory Task.empty() => const Task(taskTitle: '', isComplete: false);

  factory Task.dummy() =>
      const Task(taskTitle: 'sample task', isComplete: false);

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
