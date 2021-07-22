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

  ValueHistoryEventAdd add({int increment = 0, int unixTime = 0}) {
    return ValueHistoryEventAdd(
      increment: increment,
      unixTime: unixTime,
    );
  }

  ValueHistoryEventRemove remove(int unixTime) {
    return ValueHistoryEventRemove(
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
    required TResult Function(ValueHistoryEventAdd value) add,
    required TResult Function(ValueHistoryEventRemove value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueHistoryEventAdd value)? add,
    TResult Function(ValueHistoryEventRemove value)? remove,
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
abstract class $ValueHistoryEventAddCopyWith<$Res>
    implements $ValueHistoryEventCopyWith<$Res> {
  factory $ValueHistoryEventAddCopyWith(ValueHistoryEventAdd value,
          $Res Function(ValueHistoryEventAdd) then) =
      _$ValueHistoryEventAddCopyWithImpl<$Res>;
  @override
  $Res call({int increment, int unixTime});
}

/// @nodoc
class _$ValueHistoryEventAddCopyWithImpl<$Res>
    extends _$ValueHistoryEventCopyWithImpl<$Res>
    implements $ValueHistoryEventAddCopyWith<$Res> {
  _$ValueHistoryEventAddCopyWithImpl(
      ValueHistoryEventAdd _value, $Res Function(ValueHistoryEventAdd) _then)
      : super(_value, (v) => _then(v as ValueHistoryEventAdd));

  @override
  ValueHistoryEventAdd get _value => super._value as ValueHistoryEventAdd;

  @override
  $Res call({
    Object? increment = freezed,
    Object? unixTime = freezed,
  }) {
    return _then(ValueHistoryEventAdd(
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

class _$ValueHistoryEventAdd implements ValueHistoryEventAdd {
  const _$ValueHistoryEventAdd({this.increment = 0, this.unixTime = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int increment;
  @JsonKey(defaultValue: 0)
  @override
  final int unixTime;

  @override
  String toString() {
    return 'ValueHistoryEvent.add(increment: $increment, unixTime: $unixTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValueHistoryEventAdd &&
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
  $ValueHistoryEventAddCopyWith<ValueHistoryEventAdd> get copyWith =>
      _$ValueHistoryEventAddCopyWithImpl<ValueHistoryEventAdd>(
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
    required TResult Function(ValueHistoryEventAdd value) add,
    required TResult Function(ValueHistoryEventRemove value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueHistoryEventAdd value)? add,
    TResult Function(ValueHistoryEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class ValueHistoryEventAdd implements ValueHistoryEvent {
  const factory ValueHistoryEventAdd({int increment, int unixTime}) =
      _$ValueHistoryEventAdd;

  int get increment => throw _privateConstructorUsedError;
  @override
  int get unixTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ValueHistoryEventAddCopyWith<ValueHistoryEventAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueHistoryEventRemoveCopyWith<$Res>
    implements $ValueHistoryEventCopyWith<$Res> {
  factory $ValueHistoryEventRemoveCopyWith(ValueHistoryEventRemove value,
          $Res Function(ValueHistoryEventRemove) then) =
      _$ValueHistoryEventRemoveCopyWithImpl<$Res>;
  @override
  $Res call({int unixTime});
}

/// @nodoc
class _$ValueHistoryEventRemoveCopyWithImpl<$Res>
    extends _$ValueHistoryEventCopyWithImpl<$Res>
    implements $ValueHistoryEventRemoveCopyWith<$Res> {
  _$ValueHistoryEventRemoveCopyWithImpl(ValueHistoryEventRemove _value,
      $Res Function(ValueHistoryEventRemove) _then)
      : super(_value, (v) => _then(v as ValueHistoryEventRemove));

  @override
  ValueHistoryEventRemove get _value => super._value as ValueHistoryEventRemove;

  @override
  $Res call({
    Object? unixTime = freezed,
  }) {
    return _then(ValueHistoryEventRemove(
      unixTime == freezed
          ? _value.unixTime
          : unixTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ValueHistoryEventRemove implements ValueHistoryEventRemove {
  const _$ValueHistoryEventRemove(this.unixTime);

  @override
  final int unixTime;

  @override
  String toString() {
    return 'ValueHistoryEvent.remove(unixTime: $unixTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValueHistoryEventRemove &&
            (identical(other.unixTime, unixTime) ||
                const DeepCollectionEquality()
                    .equals(other.unixTime, unixTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(unixTime);

  @JsonKey(ignore: true)
  @override
  $ValueHistoryEventRemoveCopyWith<ValueHistoryEventRemove> get copyWith =>
      _$ValueHistoryEventRemoveCopyWithImpl<ValueHistoryEventRemove>(
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
    required TResult Function(ValueHistoryEventAdd value) add,
    required TResult Function(ValueHistoryEventRemove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueHistoryEventAdd value)? add,
    TResult Function(ValueHistoryEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class ValueHistoryEventRemove implements ValueHistoryEvent {
  const factory ValueHistoryEventRemove(int unixTime) =
      _$ValueHistoryEventRemove;

  @override
  int get unixTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ValueHistoryEventRemoveCopyWith<ValueHistoryEventRemove> get copyWith =>
      throw _privateConstructorUsedError;
}
