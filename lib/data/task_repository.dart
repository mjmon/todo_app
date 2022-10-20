import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:sembast/sembast.dart';

abstract class IBaseRepository<T> {
  Stream<List<Task>> stream();
  Future<List<T>> fetch();
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

  /// listen to changes on the database
  @override
  Stream<List<Task>> stream() {
    return _taskStore
        .query()
        .onSnapshots(_database)
        .transform(_streamTransformer);
  }

  @override
  Future<List<Task>> fetch() async {
    final recordSnapshots = await _taskStore.find(
      _database,
    );

    final taskList = [
      ...recordSnapshots.map((snapshot) {
        final task = Task.fromJson(snapshot.value as Map<String, dynamic>)
            .copyWith(id: snapshot.key);
        return task;
      })
    ];

    return taskList;
  }

  @override
  Future<void> add(Task item) async {
    await _taskStore.add(_database, item.toJson());
  }

  @override
  Future<void> update(Task item) async {
    final finder = Finder(filter: Filter.byKey(item.id));
    await _taskStore.update(_database, item.toJson(), finder: finder);
  }

  @override
  Future<void> delete(Task item) async {
    final finder = Finder(filter: Filter.byKey(item.id));
    await _taskStore.delete(_database, finder: finder);
  }
}

final _streamTransformer = StreamTransformer<
    List<RecordSnapshot<dynamic, dynamic>>, List<Task>>.fromHandlers(
  handleData: (List<RecordSnapshot<dynamic, dynamic>> data, EventSink sink) {
    final List<Task> taskList = [];

    for (final e in data) {
      final task = Task.fromJson(e.value).copyWith(id: e.key);

      taskList.add(task);
    }
    sink.add(taskList);
  },
  handleError: (error, stacktrace, sink) {
    debugPrint('transformer: $error');
    sink.addError('Something went wrong: $error');
  },
  handleDone: (sink) {
    debugPrint('transformer: done');
    sink.close();
  },
);
