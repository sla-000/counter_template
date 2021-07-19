// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IncrementAsyncEventTearOff {
  const _$IncrementAsyncEventTearOff();

  IncrementAsyncExec exec() {
    return const IncrementAsyncExec();
  }
}

/// @nodoc
const $IncrementAsyncEvent = _$IncrementAsyncEventTearOff();

/// @nodoc
mixin _$IncrementAsyncEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exec,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exec,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementAsyncExec value) exec,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementAsyncExec value)? exec,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncrementAsyncEventCopyWith<$Res> {
  factory $IncrementAsyncEventCopyWith(
          IncrementAsyncEvent value, $Res Function(IncrementAsyncEvent) then) =
      _$IncrementAsyncEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncrementAsyncEventCopyWithImpl<$Res>
    implements $IncrementAsyncEventCopyWith<$Res> {
  _$IncrementAsyncEventCopyWithImpl(this._value, this._then);

  final IncrementAsyncEvent _value;
  // ignore: unused_field
  final $Res Function(IncrementAsyncEvent) _then;
}

/// @nodoc
abstract class $IncrementAsyncExecCopyWith<$Res> {
  factory $IncrementAsyncExecCopyWith(
          IncrementAsyncExec value, $Res Function(IncrementAsyncExec) then) =
      _$IncrementAsyncExecCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncrementAsyncExecCopyWithImpl<$Res>
    extends _$IncrementAsyncEventCopyWithImpl<$Res>
    implements $IncrementAsyncExecCopyWith<$Res> {
  _$IncrementAsyncExecCopyWithImpl(
      IncrementAsyncExec _value, $Res Function(IncrementAsyncExec) _then)
      : super(_value, (v) => _then(v as IncrementAsyncExec));

  @override
  IncrementAsyncExec get _value => super._value as IncrementAsyncExec;
}

/// @nodoc

class _$IncrementAsyncExec implements IncrementAsyncExec {
  const _$IncrementAsyncExec();

  @override
  String toString() {
    return 'IncrementAsyncEvent.exec()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IncrementAsyncExec);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exec,
  }) {
    return exec();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exec,
    required TResult orElse(),
  }) {
    if (exec != null) {
      return exec();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementAsyncExec value) exec,
  }) {
    return exec(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementAsyncExec value)? exec,
    required TResult orElse(),
  }) {
    if (exec != null) {
      return exec(this);
    }
    return orElse();
  }
}

abstract class IncrementAsyncExec implements IncrementAsyncEvent {
  const factory IncrementAsyncExec() = _$IncrementAsyncExec;
}
