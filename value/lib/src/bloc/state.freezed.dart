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
class _$ValueStateTearOff {
  const _$ValueStateTearOff();

  _ValueState call({int value = 0}) {
    return _ValueState(
      value: value,
    );
  }
}

/// @nodoc
const $ValueState = _$ValueStateTearOff();

/// @nodoc
mixin _$ValueState {
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueStateCopyWith<ValueState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueStateCopyWith<$Res> {
  factory $ValueStateCopyWith(
          ValueState value, $Res Function(ValueState) then) =
      _$ValueStateCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$ValueStateCopyWithImpl<$Res> implements $ValueStateCopyWith<$Res> {
  _$ValueStateCopyWithImpl(this._value, this._then);

  final ValueState _value;
  // ignore: unused_field
  final $Res Function(ValueState) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ValueStateCopyWith<$Res> implements $ValueStateCopyWith<$Res> {
  factory _$ValueStateCopyWith(
          _ValueState value, $Res Function(_ValueState) then) =
      __$ValueStateCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$ValueStateCopyWithImpl<$Res> extends _$ValueStateCopyWithImpl<$Res>
    implements _$ValueStateCopyWith<$Res> {
  __$ValueStateCopyWithImpl(
      _ValueState _value, $Res Function(_ValueState) _then)
      : super(_value, (v) => _then(v as _ValueState));

  @override
  _ValueState get _value => super._value as _ValueState;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ValueState(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ValueState extends _ValueState {
  const _$_ValueState({this.value = 0}) : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int value;

  @override
  String toString() {
    return 'ValueState(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValueState &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ValueStateCopyWith<_ValueState> get copyWith =>
      __$ValueStateCopyWithImpl<_ValueState>(this, _$identity);
}

abstract class _ValueState extends ValueState {
  const factory _ValueState({int value}) = _$_ValueState;
  const _ValueState._() : super._();

  @override
  int get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ValueStateCopyWith<_ValueState> get copyWith =>
      throw _privateConstructorUsedError;
}
