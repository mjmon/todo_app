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
    required TResult Function() fetch,
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(String mode) changeDisplayMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(String mode)? changeDisplayMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(String mode)? changeDisplayMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(ChangeDisplayMode value) changeDisplayMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Delete value)? delete,
    TResult? Function(ChangeDisplayMode value)? changeDisplayMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ChangeDisplayMode value)? changeDisplayMode,
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
abstract class _$$FetchCopyWith<$Res> {
  factory _$$FetchCopyWith(_$Fetch value, $Res Function(_$Fetch) then) =
      __$$FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res, _$Fetch>
    implements _$$FetchCopyWith<$Res> {
  __$$FetchCopyWithImpl(_$Fetch _value, $Res Function(_$Fetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Fetch implements Fetch {
  const _$Fetch();

  @override
  String toString() {
    return 'TaskEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(String mode) changeDisplayMode,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(String mode)? changeDisplayMode,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(String mode)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(ChangeDisplayMode value) changeDisplayMode,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Delete value)? delete,
    TResult? Function(ChangeDisplayMode value)? changeDisplayMode,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ChangeDisplayMode value)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements TaskEvent {
  const factory Fetch() = _$Fetch;
}

/// @nodoc
abstract class _$$AddCopyWith<$Res> {
  factory _$$AddCopyWith(_$Add value, $Res Function(_$Add) then) =
      __$$AddCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$AddCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res, _$Add>
    implements _$$AddCopyWith<$Res> {
  __$$AddCopyWithImpl(_$Add _value, $Res Function(_$Add) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$Add(
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

class _$Add implements Add {
  const _$Add({required this.task});

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
            other is _$Add &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCopyWith<_$Add> get copyWith =>
      __$$AddCopyWithImpl<_$Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(String mode) changeDisplayMode,
  }) {
    return add(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(String mode)? changeDisplayMode,
  }) {
    return add?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(String mode)? changeDisplayMode,
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
    required TResult Function(Fetch value) fetch,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(ChangeDisplayMode value) changeDisplayMode,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Delete value)? delete,
    TResult? Function(ChangeDisplayMode value)? changeDisplayMode,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ChangeDisplayMode value)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements TaskEvent {
  const factory Add({required final Task task}) = _$Add;

  Task get task;
  @JsonKey(ignore: true)
  _$$AddCopyWith<_$Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$Update>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$Update(
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

class _$Update implements Update {
  const _$Update({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskEvent.update(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Update &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCopyWith<_$Update> get copyWith =>
      __$$UpdateCopyWithImpl<_$Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(String mode) changeDisplayMode,
  }) {
    return update(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(String mode)? changeDisplayMode,
  }) {
    return update?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(String mode)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(ChangeDisplayMode value) changeDisplayMode,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Delete value)? delete,
    TResult? Function(ChangeDisplayMode value)? changeDisplayMode,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ChangeDisplayMode value)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements TaskEvent {
  const factory Update({required final Task task}) = _$Update;

  Task get task;
  @JsonKey(ignore: true)
  _$$UpdateCopyWith<_$Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$Delete>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$Delete(
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

class _$Delete implements Delete {
  const _$Delete({required this.task});

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
            other is _$Delete &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      __$$DeleteCopyWithImpl<_$Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(String mode) changeDisplayMode,
  }) {
    return delete(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(String mode)? changeDisplayMode,
  }) {
    return delete?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(String mode)? changeDisplayMode,
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
    required TResult Function(Fetch value) fetch,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(ChangeDisplayMode value) changeDisplayMode,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Delete value)? delete,
    TResult? Function(ChangeDisplayMode value)? changeDisplayMode,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ChangeDisplayMode value)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements TaskEvent {
  const factory Delete({required final Task task}) = _$Delete;

  Task get task;
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDisplayModeCopyWith<$Res> {
  factory _$$ChangeDisplayModeCopyWith(
          _$ChangeDisplayMode value, $Res Function(_$ChangeDisplayMode) then) =
      __$$ChangeDisplayModeCopyWithImpl<$Res>;
  @useResult
  $Res call({String mode});
}

/// @nodoc
class __$$ChangeDisplayModeCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ChangeDisplayMode>
    implements _$$ChangeDisplayModeCopyWith<$Res> {
  __$$ChangeDisplayModeCopyWithImpl(
      _$ChangeDisplayMode _value, $Res Function(_$ChangeDisplayMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$ChangeDisplayMode(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeDisplayMode implements ChangeDisplayMode {
  const _$ChangeDisplayMode({required this.mode});

  @override
  final String mode;

  @override
  String toString() {
    return 'TaskEvent.changeDisplayMode(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDisplayMode &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDisplayModeCopyWith<_$ChangeDisplayMode> get copyWith =>
      __$$ChangeDisplayModeCopyWithImpl<_$ChangeDisplayMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(String mode) changeDisplayMode,
  }) {
    return changeDisplayMode(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(String mode)? changeDisplayMode,
  }) {
    return changeDisplayMode?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(String mode)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (changeDisplayMode != null) {
      return changeDisplayMode(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(ChangeDisplayMode value) changeDisplayMode,
  }) {
    return changeDisplayMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Delete value)? delete,
    TResult? Function(ChangeDisplayMode value)? changeDisplayMode,
  }) {
    return changeDisplayMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ChangeDisplayMode value)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (changeDisplayMode != null) {
      return changeDisplayMode(this);
    }
    return orElse();
  }
}

abstract class ChangeDisplayMode implements TaskEvent {
  const factory ChangeDisplayMode({required final String mode}) =
      _$ChangeDisplayMode;

  String get mode;
  @JsonKey(ignore: true)
  _$$ChangeDisplayModeCopyWith<_$ChangeDisplayMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  List<Task> get allTaskList => throw _privateConstructorUsedError;
  List<Task> get activeTaskList => throw _privateConstructorUsedError;
  List<Task> get completedTaskList => throw _privateConstructorUsedError;
  String get displayMode => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;

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
      {List<Task> allTaskList,
      List<Task> activeTaskList,
      List<Task> completedTaskList,
      String displayMode,
      bool isBusy,
      String? errorMessage,
      String? successMessage});
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
    Object? allTaskList = null,
    Object? activeTaskList = null,
    Object? completedTaskList = null,
    Object? displayMode = null,
    Object? isBusy = null,
    Object? errorMessage = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_value.copyWith(
      allTaskList: null == allTaskList
          ? _value.allTaskList
          : allTaskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      activeTaskList: null == activeTaskList
          ? _value.activeTaskList
          : activeTaskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      completedTaskList: null == completedTaskList
          ? _value.completedTaskList
          : completedTaskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      displayMode: null == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as String,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {List<Task> allTaskList,
      List<Task> activeTaskList,
      List<Task> completedTaskList,
      String displayMode,
      bool isBusy,
      String? errorMessage,
      String? successMessage});
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
    Object? allTaskList = null,
    Object? activeTaskList = null,
    Object? completedTaskList = null,
    Object? displayMode = null,
    Object? isBusy = null,
    Object? errorMessage = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_$_TaskState(
      allTaskList: null == allTaskList
          ? _value._allTaskList
          : allTaskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      activeTaskList: null == activeTaskList
          ? _value._activeTaskList
          : activeTaskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      completedTaskList: null == completedTaskList
          ? _value._completedTaskList
          : completedTaskList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      displayMode: null == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as String,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TaskState implements _TaskState {
  const _$_TaskState(
      {required final List<Task> allTaskList,
      required final List<Task> activeTaskList,
      required final List<Task> completedTaskList,
      required this.displayMode,
      required this.isBusy,
      required this.errorMessage,
      required this.successMessage})
      : _allTaskList = allTaskList,
        _activeTaskList = activeTaskList,
        _completedTaskList = completedTaskList;

  final List<Task> _allTaskList;
  @override
  List<Task> get allTaskList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allTaskList);
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
  final String displayMode;
  @override
  final bool isBusy;
  @override
  final String? errorMessage;
  @override
  final String? successMessage;

  @override
  String toString() {
    return 'TaskState(allTaskList: $allTaskList, activeTaskList: $activeTaskList, completedTaskList: $completedTaskList, displayMode: $displayMode, isBusy: $isBusy, errorMessage: $errorMessage, successMessage: $successMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskState &&
            const DeepCollectionEquality()
                .equals(other._allTaskList, _allTaskList) &&
            const DeepCollectionEquality()
                .equals(other._activeTaskList, _activeTaskList) &&
            const DeepCollectionEquality()
                .equals(other._completedTaskList, _completedTaskList) &&
            (identical(other.displayMode, displayMode) ||
                other.displayMode == displayMode) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allTaskList),
      const DeepCollectionEquality().hash(_activeTaskList),
      const DeepCollectionEquality().hash(_completedTaskList),
      displayMode,
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
      {required final List<Task> allTaskList,
      required final List<Task> activeTaskList,
      required final List<Task> completedTaskList,
      required final String displayMode,
      required final bool isBusy,
      required final String? errorMessage,
      required final String? successMessage}) = _$_TaskState;

  @override
  List<Task> get allTaskList;
  @override
  List<Task> get activeTaskList;
  @override
  List<Task> get completedTaskList;
  @override
  String get displayMode;
  @override
  bool get isBusy;
  @override
  String? get errorMessage;
  @override
  String? get successMessage;
  @override
  @JsonKey(ignore: true)
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
