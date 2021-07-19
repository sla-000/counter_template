// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IncrementAsyncStateTearOff {
  const _$IncrementAsyncStateTearOff();

  _IncrementAsyncState call({bool busy = false}) {
    return _IncrementAsyncState(
      busy: busy,
    );
  }
}

/// @nodoc
const $IncrementAsyncState = _$IncrementAsyncStateTearOff();

/// @nodoc
mixin _$IncrementAsyncState {
  bool get busy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncrementAsyncStateCopyWith<IncrementAsyncState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncrementAsyncStateCopyWith<$Res> {
  factory $IncrementAsyncStateCopyWith(
          IncrementAsyncState value, $Res Function(IncrementAsyncState) then) =
      _$IncrementAsyncStateCopyWithImpl<$Res>;
  $Res call({bool busy});
}

/// @nodoc
class _$IncrementAsyncStateCopyWithImpl<$Res>
    implements $IncrementAsyncStateCopyWith<$Res> {
  _$IncrementAsyncStateCopyWithImpl(this._value, this._then);

  final IncrementAsyncState _value;
  // ignore: unused_field
  final $Res Function(IncrementAsyncState) _then;

  @override
  $Res call({
    Object? busy = freezed,
  }) {
    return _then(_value.copyWith(
      busy: busy == freezed
          ? _value.busy
          : busy // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$IncrementAsyncStateCopyWith<$Res>
    implements $IncrementAsyncStateCopyWith<$Res> {
  factory _$IncrementAsyncStateCopyWith(_IncrementAsyncState value,
          $Res Function(_IncrementAsyncState) then) =
      __$IncrementAsyncStateCopyWithImpl<$Res>;
  @override
  $Res call({bool busy});
}

/// @nodoc
class __$IncrementAsyncStateCopyWithImpl<$Res>
    extends _$IncrementAsyncStateCopyWithImpl<$Res>
    implements _$IncrementAsyncStateCopyWith<$Res> {
  __$IncrementAsyncStateCopyWithImpl(
      _IncrementAsyncState _value, $Res Function(_IncrementAsyncState) _then)
      : super(_value, (v) => _then(v as _IncrementAsyncState));

  @override
  _IncrementAsyncState get _value => super._value as _IncrementAsyncState;

  @override
  $Res call({
    Object? busy = freezed,
  }) {
    return _then(_IncrementAsyncState(
      busy: busy == freezed
          ? _value.busy
          : busy // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IncrementAsyncState implements _IncrementAsyncState {
  const _$_IncrementAsyncState({this.busy = false});

  @JsonKey(defaultValue: false)
  @override
  final bool busy;

  @override
  String toString() {
    return 'IncrementAsyncState(busy: $busy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncrementAsyncState &&
            (identical(other.busy, busy) ||
                const DeepCollectionEquality().equals(other.busy, busy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(busy);

  @JsonKey(ignore: true)
  @override
  _$IncrementAsyncStateCopyWith<_IncrementAsyncState> get copyWith =>
      __$IncrementAsyncStateCopyWithImpl<_IncrementAsyncState>(
          this, _$identity);
}

abstract class _IncrementAsyncState implements IncrementAsyncState {
  const factory _IncrementAsyncState({bool busy}) = _$_IncrementAsyncState;

  @override
  bool get busy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IncrementAsyncStateCopyWith<_IncrementAsyncState> get copyWith =>
      throw _privateConstructorUsedError;
}
