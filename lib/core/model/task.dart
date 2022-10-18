import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  // id will be gotten from the database.
  // It's automatically generated & unique for every stored Task.
  const factory Task(
      {int? id,
      required String title,
      required String description,
      required int priority,
      required bool isComplete}) = _Task;

  factory Task.empty() =>
      const Task(title: '', description: '', priority: 2, isComplete: false);

  // used for test purposes only
  factory Task.dummy() => const Task(
      title: 'sample task',
      description: 'sample description',
      priority: 2,
      isComplete: false);

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
