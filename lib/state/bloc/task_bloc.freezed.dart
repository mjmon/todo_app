// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> taskList) fetch,
    required TResult Function(Task task) add,
    required TResult Function(Task task) edit,
    required TResult Function(Task task) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> taskList)? fetch,
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? edit,
    TResult? Function(Task task)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> taskList)? fetch,
    TResult Function(Task task)? add,
    TResult Function(Task task)? edit,
    TResult Function(Task task)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Task> taskList});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
  }) {
    return _then(_$_Fetch(
      taskList: null == taskList
          ? _value._taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch({required final List<Task> taskList}) : _taskList = taskList;

  final List<Task> _taskList;
  @override
  List<Task> get taskList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskList);
  }

  @override
  String toString() {
    return 'TaskEvent.fetch(taskList: $taskList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            const DeepCollectionEquality().equals(other._taskList, _taskList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_taskList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> taskList) fetch,
    required TResult Function(Task task) add,
    required TResult Function(Task task) edit,
    required TResult Function(Task task) delete,
  }) {
    return fetch(taskList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> taskList)? fetch,
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? edit,
    TResult? Function(Task task)? delete,
  }) {
    return fetch?.call(taskList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> taskList)? fetch,
    TResult Function(Task task)? add,
    TResult Function(Task task)? edit,
    TResult Function(Task task)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(taskList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements TaskEvent {
  const factory _Fetch({required final List<Task> taskList}) = _$_Fetch;

  List<Task> get taskList;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCopyWith<$Res> {
  factory _$$_AddCopyWith(_$_Add value, $Res Function(_$_Add) then) =
      __$$_AddCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_AddCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res, _$_Add>
    implements _$$_AddCopyWith<$Res> {
  __$$_AddCopyWithImpl(_$_Add _value, $Res Function(_$_Add) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_Add(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskEvent.add(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Add &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCopyWith<_$_Add> get copyWith =>
      __$$_AddCopyWithImpl<_$_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> taskList) fetch,
    required TResult Function(Task task) add,
    required TResult Function(Task task) edit,
    required TResult Function(Task task) delete,
  }) {
    return add(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> taskList)? fetch,
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? edit,
    TResult? Function(Task task)? delete,
  }) {
    return add?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> taskList)? fetch,
    TResult Function(Task task)? add,
    TResult Function(Task task)? edit,
    TResult Function(Task task)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements TaskEvent {
  const factory _Add({required final Task task}) = _$_Add;

  Task get task;
  @JsonKey(ignore: true)
  _$$_AddCopyWith<_$_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditCopyWith<$Res> {
  factory _$$_EditCopyWith(_$_Edit value, $Res Function(_$_Edit) then) =
      __$$_EditCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_EditCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res, _$_Edit>
    implements _$$_EditCopyWith<$Res> {
  __$$_EditCopyWithImpl(_$_Edit _value, $Res Function(_$_Edit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_Edit(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_Edit implements _Edit {
  const _$_Edit({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskEvent.edit(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Edit &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditCopyWith<_$_Edit> get copyWith =>
      __$$_EditCopyWithImpl<_$_Edit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> taskList) fetch,
    required TResult Function(Task task) add,
    required TResult Function(Task task) edit,
    required TResult Function(Task task) delete,
  }) {
    return edit(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> taskList)? fetch,
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? edit,
    TResult? Function(Task task)? delete,
  }) {
    return edit?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> taskList)? fetch,
    TResult Function(Task task)? add,
    TResult Function(Task task)? edit,
    TResult Function(Task task)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit implements TaskEvent {
  const factory _Edit({required final Task task}) = _$_Edit;

  Task get task;
  @JsonKey(ignore: true)
  _$$_EditCopyWith<_$_Edit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_Delete>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_Delete(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskEvent.delete(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> taskList) fetch,
    required TResult Function(Task task) add,
    required TResult Function(Task task) edit,
    required TResult Function(Task task) delete,
  }) {
    return delete(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> taskList)? fetch,
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? edit,
    TResult? Function(Task task)? delete,
  }) {
    return delete?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> taskList)? fetch,
    TResult Function(Task task)? add,
    TResult Function(Task task)? edit,
    TResult Function(Task task)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements TaskEvent {
  const factory _Delete({required final Task task}) = _$_Delete;

  Task get task;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  List<Task> get taskList => throw _privateConstructorUsedError;
  List<Task> get activeTaskList => throw _privateConstructorUsedError;
  List<Task> get completedTaskList => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {List<Task> taskList,
      List<Task> activeTaskList,
      List<Task> completedTaskList,
      bool isBusy,
      String errorMessage,
      String successMessage});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
    Object? activeTaskList = null,
    Object? completedTaskList = null,
    Object? isBusy = null,
    Object? errorMessage = null,
    Object? successMessage = null,
  }) {
    return _then(_value.copyWith(
      taskList: null == taskList
          ? _value.taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      activeTaskList: null == activeTaskList
          ? _value.activeTaskList
          : activeTaskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      completedTaskList: null == completedTaskList
          ? _value.completedTaskList
          : completedTaskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_TaskStateCopyWith(
          _$_TaskState value, $Res Function(_$_TaskState) then) =
      __$$_TaskStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Task> taskList,
      List<Task> activeTaskList,
      List<Task> completedTaskList,
      bool isBusy,
      String errorMessage,
      String successMessage});
}

/// @nodoc
class __$$_TaskStateCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_TaskState>
    implements _$$_TaskStateCopyWith<$Res> {
  __$$_TaskStateCopyWithImpl(
      _$_TaskState _value, $Res Function(_$_TaskState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
    Object? activeTaskList = null,
    Object? completedTaskList = null,
    Object? isBusy = null,
    Object? errorMessage = null,
    Object? successMessage = null,
  }) {
    return _then(_$_TaskState(
      taskList: null == taskList
          ? _value._taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      activeTaskList: null == activeTaskList
          ? _value._activeTaskList
          : activeTaskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      completedTaskList: null == completedTaskList
          ? _value._completedTaskList
          : completedTaskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskState implements _TaskState {
  const _$_TaskState(
      {required final List<Task> taskList,
      required final List<Task> activeTaskList,
      required final List<Task> completedTaskList,
      required this.isBusy,
      required this.errorMessage,
      required this.successMessage})
      : _taskList = taskList,
        _activeTaskList = activeTaskList,
        _completedTaskList = completedTaskList;

  final List<Task> _taskList;
  @override
  List<Task> get taskList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskList);
  }

  final List<Task> _activeTaskList;
  @override
  List<Task> get activeTaskList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeTaskList);
  }

  final List<Task> _completedTaskList;
  @override
  List<Task> get completedTaskList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedTaskList);
  }

  @override
  final bool isBusy;
  @override
  final String errorMessage;
  @override
  final String successMessage;

  @override
  String toString() {
    return 'TaskState(taskList: $taskList, activeTaskList: $activeTaskList, completedTaskList: $completedTaskList, isBusy: $isBusy, errorMessage: $errorMessage, successMessage: $successMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskState &&
            const DeepCollectionEquality().equals(other._taskList, _taskList) &&
            const DeepCollectionEquality()
                .equals(other._activeTaskList, _activeTaskList) &&
            const DeepCollectionEquality()
                .equals(other._completedTaskList, _completedTaskList) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_taskList),
      const DeepCollectionEquality().hash(_activeTaskList),
      const DeepCollectionEquality().hash(_completedTaskList),
      isBusy,
      errorMessage,
      successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      __$$_TaskStateCopyWithImpl<_$_TaskState>(this, _$identity);
}

abstract class _TaskState implements TaskState {
  const factory _TaskState(
      {required final List<Task> taskList,
      required final List<Task> activeTaskList,
      required final List<Task> completedTaskList,
      required final bool isBusy,
      required final String errorMessage,
      required final String successMessage}) = _$_TaskState;

  @override
  List<Task> get taskList;
  @override
  List<Task> get activeTaskList;
  @override
  List<Task> get completedTaskList;
  @override
  bool get isBusy;
  @override
  String get errorMessage;
  @override
  String get successMessage;
  @override
  @JsonKey(ignore: true)
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
