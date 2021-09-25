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
class _$ValueHistoryEventTearOff {
  const _$ValueHistoryEventTearOff();

  _ValueHistoryEventAdd add({int increment = 1, required int unixTime}) {
    return _ValueHistoryEventAdd(
      increment: increment,
      unixTime: unixTime,
    );
  }

  _ValueHistoryEventRemove remove(int unixTime) {
    return _ValueHistoryEventRemove(
      unixTime,
    );
  }
}

/// @nodoc
const $ValueHistoryEvent = _$ValueHistoryEventTearOff();

/// @nodoc
mixin _$ValueHistoryEvent {
  int get unixTime => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int increment, int unixTime) add,
    required TResult Function(int unixTime) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int increment, int unixTime)? add,
    TResult Function(int unixTime)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueHistoryEventAdd value) add,
    required TResult Function(_ValueHistoryEventRemove value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueHistoryEventAdd value)? add,
    TResult Function(_ValueHistoryEventRemove value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueHistoryEventCopyWith<ValueHistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueHistoryEventCopyWith<$Res> {
  factory $ValueHistoryEventCopyWith(
          ValueHistoryEvent value, $Res Function(ValueHistoryEvent) then) =
      _$ValueHistoryEventCopyWithImpl<$Res>;
  $Res call({int unixTime});
}

/// @nodoc
class _$ValueHistoryEventCopyWithImpl<$Res>
    implements $ValueHistoryEventCopyWith<$Res> {
  _$ValueHistoryEventCopyWithImpl(this._value, this._then);

  final ValueHistoryEvent _value;
  // ignore: unused_field
  final $Res Function(ValueHistoryEvent) _then;

  @override
  $Res call({
    Object? unixTime = freezed,
  }) {
    return _then(_value.copyWith(
      unixTime: unixTime == freezed
          ? _value.unixTime
          : unixTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ValueHistoryEventAddCopyWith<$Res>
    implements $ValueHistoryEventCopyWith<$Res> {
  factory _$ValueHistoryEventAddCopyWith(_ValueHistoryEventAdd value,
          $Res Function(_ValueHistoryEventAdd) then) =
      __$ValueHistoryEventAddCopyWithImpl<$Res>;
  @override
  $Res call({int increment, int unixTime});
}

/// @nodoc
class __$ValueHistoryEventAddCopyWithImpl<$Res>
    extends _$ValueHistoryEventCopyWithImpl<$Res>
    implements _$ValueHistoryEventAddCopyWith<$Res> {
  __$ValueHistoryEventAddCopyWithImpl(
      _ValueHistoryEventAdd _value, $Res Function(_ValueHistoryEventAdd) _then)
      : super(_value, (v) => _then(v as _ValueHistoryEventAdd));

  @override
  _ValueHistoryEventAdd get _value => super._value as _ValueHistoryEventAdd;

  @override
  $Res call({
    Object? increment = freezed,
    Object? unixTime = freezed,
  }) {
    return _then(_ValueHistoryEventAdd(
      increment: increment == freezed
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int,
      unixTime: unixTime == freezed
          ? _value.unixTime
          : unixTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ValueHistoryEventAdd implements _ValueHistoryEventAdd {
  const _$_ValueHistoryEventAdd({this.increment = 1, required this.unixTime});

  @JsonKey(defaultValue: 1)
  @override
  final int increment;
  @override
  final int unixTime;

  @override
  String toString() {
    return 'ValueHistoryEvent.add(increment: $increment, unixTime: $unixTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValueHistoryEventAdd &&
            (identical(other.increment, increment) ||
                const DeepCollectionEquality()
                    .equals(other.increment, increment)) &&
            (identical(other.unixTime, unixTime) ||
                const DeepCollectionEquality()
                    .equals(other.unixTime, unixTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(increment) ^
      const DeepCollectionEquality().hash(unixTime);

  @JsonKey(ignore: true)
  @override
  _$ValueHistoryEventAddCopyWith<_ValueHistoryEventAdd> get copyWith =>
      __$ValueHistoryEventAddCopyWithImpl<_ValueHistoryEventAdd>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int increment, int unixTime) add,
    required TResult Function(int unixTime) remove,
  }) {
    return add(increment, unixTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int increment, int unixTime)? add,
    TResult Function(int unixTime)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(increment, unixTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueHistoryEventAdd value) add,
    required TResult Function(_ValueHistoryEventRemove value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueHistoryEventAdd value)? add,
    TResult Function(_ValueHistoryEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _ValueHistoryEventAdd implements ValueHistoryEvent {
  const factory _ValueHistoryEventAdd({int increment, required int unixTime}) =
      _$_ValueHistoryEventAdd;

  int get increment => throw _privateConstructorUsedError;
  @override
  int get unixTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ValueHistoryEventAddCopyWith<_ValueHistoryEventAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValueHistoryEventRemoveCopyWith<$Res>
    implements $ValueHistoryEventCopyWith<$Res> {
  factory _$ValueHistoryEventRemoveCopyWith(_ValueHistoryEventRemove value,
          $Res Function(_ValueHistoryEventRemove) then) =
      __$ValueHistoryEventRemoveCopyWithImpl<$Res>;
  @override
  $Res call({int unixTime});
}

/// @nodoc
class __$ValueHistoryEventRemoveCopyWithImpl<$Res>
    extends _$ValueHistoryEventCopyWithImpl<$Res>
    implements _$ValueHistoryEventRemoveCopyWith<$Res> {
  __$ValueHistoryEventRemoveCopyWithImpl(_ValueHistoryEventRemove _value,
      $Res Function(_ValueHistoryEventRemove) _then)
      : super(_value, (v) => _then(v as _ValueHistoryEventRemove));

  @override
  _ValueHistoryEventRemove get _value =>
      super._value as _ValueHistoryEventRemove;

  @override
  $Res call({
    Object? unixTime = freezed,
  }) {
    return _then(_ValueHistoryEventRemove(
      unixTime == freezed
          ? _value.unixTime
          : unixTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ValueHistoryEventRemove implements _ValueHistoryEventRemove {
  const _$_ValueHistoryEventRemove(this.unixTime);

  @override
  final int unixTime;

  @override
  String toString() {
    return 'ValueHistoryEvent.remove(unixTime: $unixTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValueHistoryEventRemove &&
            (identical(other.unixTime, unixTime) ||
                const DeepCollectionEquality()
                    .equals(other.unixTime, unixTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(unixTime);

  @JsonKey(ignore: true)
  @override
  _$ValueHistoryEventRemoveCopyWith<_ValueHistoryEventRemove> get copyWith =>
      __$ValueHistoryEventRemoveCopyWithImpl<_ValueHistoryEventRemove>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int increment, int unixTime) add,
    required TResult Function(int unixTime) remove,
  }) {
    return remove(unixTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int increment, int unixTime)? add,
    TResult Function(int unixTime)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(unixTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueHistoryEventAdd value) add,
    required TResult Function(_ValueHistoryEventRemove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueHistoryEventAdd value)? add,
    TResult Function(_ValueHistoryEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _ValueHistoryEventRemove implements ValueHistoryEvent {
  const factory _ValueHistoryEventRemove(int unixTime) =
      _$_ValueHistoryEventRemove;

  @override
  int get unixTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ValueHistoryEventRemoveCopyWith<_ValueHistoryEventRemove> get copyWith =>
      throw _privateConstructorUsedError;
}
