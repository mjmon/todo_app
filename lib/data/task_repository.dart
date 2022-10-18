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

abstract class ITaskRepository<T> {
  Future<void> isComplete(T item, bool newValue);
}

class TaskRepository implements IBaseRepository<Task>, ITaskRepository<Task> {
  final Database _database;
  final StoreRef _taskStore;

  TaskRepository({required Database database, required StoreRef taskStore})
      : _database = database,
        _taskStore = taskStore;

  @override
  Future<void> add(Task item) async {
    try {
      await _taskStore.add(_database, item.toJson());
    } catch (e) {
      debugPrint("error adding: $e");
    }
  }

  @override
  Future<void> delete(Task item) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> update(Task item) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> isComplete(Task item, bool newValue) {
    // TODO: implement isComplete
    throw UnimplementedError();
  }

  @override
  Stream<List<Task>> getStream() {
    return _taskStore
        .query()
        .onSnapshots(_database)
        .transform(_taskStreamTransformer);
  }
}

// List<RecordSnapshot<dynamic, dynamic>>

final _taskStreamTransformer = StreamTransformer<
        List<RecordSnapshot<dynamic, dynamic>>, List<Task>>.fromHandlers(
    handleData: (List<RecordSnapshot<dynamic, dynamic>> recordSnapshots,
        EventSink sink) {
  final List<Task> tweetList = [];

  for (final e in recordSnapshots) {
    final tweet = Task.fromJson(e.value as Map<String, dynamic>);
    tweetList.add(tweet);
  }
  sink.add(tweetList);
});
