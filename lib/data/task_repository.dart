import 'package:flutter/material.dart';
import 'package:rocket_todo/core/model/task.dart';
import 'package:sembast/sembast.dart';

abstract class IBaseRepository<T> {
  // Stream<List<T>> getStream();
  Future<List<T>> get();
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
  Future<List<Task>> get() async {
    final recordSnapshots = await _taskStore.find(
      _database,
    );

    final taskList = [
      ...recordSnapshots.map((snapshot) {
        final task = Task.fromJson(snapshot.value).copyWith(id: snapshot.key);
        return task;
      })
    ];

    return taskList;
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
}
