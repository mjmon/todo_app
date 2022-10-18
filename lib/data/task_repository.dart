import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:sembast/sembast.dart';

abstract class IBaseRepository<T> {
  Stream<List<T>> getStream();
  Future<void> add(T item);
  Future<void> update(T item);
  Future<void> delete(T item);
}

class TaskRepository implements IBaseRepository<Task> {
  final Database _database;
  final StoreRef _taskStore;

  TaskRepository({required Database database, required StoreRef taskStore})
      : _database = database,
        _taskStore = taskStore;

  @override
  Future<void> add(Task item) async {
    await _taskStore.add(_database, item.toJson());
  }

  @override
  Future<void> delete(Task item) async {
    final finder = Finder(filter: Filter.byKey(item.id));
    await _taskStore.delete(_database, finder: finder);
  }

  @override
  Future<void> update(Task item) async {
    final finder = Finder(filter: Filter.byKey(item.id));
    await _taskStore.update(_database, item.toJson(), finder: finder);
  }

  /// listen to changes on the database
  @override
  Stream<List<Task>> getStream() {
    return _taskStore
        .query()
        .onSnapshots(_database)
        .transform(_taskStreamTransformer);
  }
}

/// for transforming raw snapshots to List of Task
final _taskStreamTransformer = StreamTransformer<
        List<RecordSnapshot<dynamic, dynamic>>, List<Task>>.fromHandlers(
    handleData: (List<RecordSnapshot<dynamic, dynamic>> recordSnapshots,
        EventSink sink) {
  final List<Task> taskList = [];

  for (final e in recordSnapshots) {
    final task =
        Task.fromJson(e.value as Map<String, dynamic>).copyWith(id: e.key);

    taskList.add(task);
  }
  sink.add(taskList);
});
