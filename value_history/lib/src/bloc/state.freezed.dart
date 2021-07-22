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
class _$ValueHistoryStateTearOff {
  const _$ValueHistoryStateTearOff();

  _ValueHistoryState call(
      {Map<int, int> unixTimeIncrementMap = const <int, int>{}}) {
    return _ValueHistoryState(
      unixTimeIncrementMap: unixTimeIncrementMap,
    );
  }
}

/// @nodoc
const $ValueHistoryState = _$ValueHistoryStateTearOff();

/// @nodoc
mixin _$ValueHistoryState {
  Map<int, int> get unixTimeIncrementMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueHistoryStateCopyWith<ValueHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueHistoryStateCopyWith<$Res> {
  factory $ValueHistoryStateCopyWith(
          ValueHistoryState value, $Res Function(ValueHistoryState) then) =
      _$ValueHistoryStateCopyWithImpl<$Res>;
  $Res call({Map<int, int> unixTimeIncrementMap});
}

/// @nodoc
class _$ValueHistoryStateCopyWithImpl<$Res>
    implements $ValueHistoryStateCopyWith<$Res> {
  _$ValueHistoryStateCopyWithImpl(this._value, this._then);

  final ValueHistoryState _value;
  // ignore: unused_field
  final $Res Function(ValueHistoryState) _then;

  @override
  $Res call({
    Object? unixTimeIncrementMap = freezed,
  }) {
    return _then(_value.copyWith(
      unixTimeIncrementMap: unixTimeIncrementMap == freezed
          ? _value.unixTimeIncrementMap
          : unixTimeIncrementMap // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
    ));
  }
}

/// @nodoc
abstract class _$ValueHistoryStateCopyWith<$Res>
    implements $ValueHistoryStateCopyWith<$Res> {
  factory _$ValueHistoryStateCopyWith(
          _ValueHistoryState value, $Res Function(_ValueHistoryState) then) =
      __$ValueHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<int, int> unixTimeIncrementMap});
}

/// @nodoc
class __$ValueHistoryStateCopyWithImpl<$Res>
    extends _$ValueHistoryStateCopyWithImpl<$Res>
    implements _$ValueHistoryStateCopyWith<$Res> {
  __$ValueHistoryStateCopyWithImpl(
      _ValueHistoryState _value, $Res Function(_ValueHistoryState) _then)
      : super(_value, (v) => _then(v as _ValueHistoryState));

  @override
  _ValueHistoryState get _value => super._value as _ValueHistoryState;

  @override
  $Res call({
    Object? unixTimeIncrementMap = freezed,
  }) {
    return _then(_ValueHistoryState(
      unixTimeIncrementMap: unixTimeIncrementMap == freezed
          ? _value.unixTimeIncrementMap
          : unixTimeIncrementMap // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
    ));
  }
}

/// @nodoc

class _$_ValueHistoryState implements _ValueHistoryState {
  const _$_ValueHistoryState({this.unixTimeIncrementMap = const <int, int>{}});

  @JsonKey(defaultValue: const <int, int>{})
  @override
  final Map<int, int> unixTimeIncrementMap;

  @override
  String toString() {
    return 'ValueHistoryState(unixTimeIncrementMap: $unixTimeIncrementMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValueHistoryState &&
            (identical(other.unixTimeIncrementMap, unixTimeIncrementMap) ||
                const DeepCollectionEquality()
                    .equals(other.unixTimeIncrementMap, unixTimeIncrementMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unixTimeIncrementMap);

  @JsonKey(ignore: true)
  @override
  _$ValueHistoryStateCopyWith<_ValueHistoryState> get copyWith =>
      __$ValueHistoryStateCopyWithImpl<_ValueHistoryState>(this, _$identity);
}

abstract class _ValueHistoryState implements ValueHistoryState {
  const factory _ValueHistoryState({Map<int, int> unixTimeIncrementMap}) =
      _$_ValueHistoryState;

  @override
  Map<int, int> get unixTimeIncrementMap => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ValueHistoryStateCopyWith<_ValueHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
