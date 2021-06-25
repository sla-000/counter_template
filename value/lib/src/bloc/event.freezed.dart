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
class _$ValueEventTearOff {
  const _$ValueEventTearOff();

  ValueEventUpdate update(int value) {
    return ValueEventUpdate(
      value,
    );
  }
}

/// @nodoc
const $ValueEvent = _$ValueEventTearOff();

/// @nodoc
mixin _$ValueEvent {
  int get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueEventCopyWith<ValueEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueEventCopyWith<$Res> {
  factory $ValueEventCopyWith(
          ValueEvent value, $Res Function(ValueEvent) then) =
      _$ValueEventCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$ValueEventCopyWithImpl<$Res> implements $ValueEventCopyWith<$Res> {
  _$ValueEventCopyWithImpl(this._value, this._then);

  final ValueEvent _value;
  // ignore: unused_field
  final $Res Function(ValueEvent) _then;

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
abstract class $ValueEventUpdateCopyWith<$Res>
    implements $ValueEventCopyWith<$Res> {
  factory $ValueEventUpdateCopyWith(
          ValueEventUpdate value, $Res Function(ValueEventUpdate) then) =
      _$ValueEventUpdateCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class _$ValueEventUpdateCopyWithImpl<$Res>
    extends _$ValueEventCopyWithImpl<$Res>
    implements $ValueEventUpdateCopyWith<$Res> {
  _$ValueEventUpdateCopyWithImpl(
      ValueEventUpdate _value, $Res Function(ValueEventUpdate) _then)
      : super(_value, (v) => _then(v as ValueEventUpdate));

  @override
  ValueEventUpdate get _value => super._value as ValueEventUpdate;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(ValueEventUpdate(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ValueEventUpdate implements ValueEventUpdate {
  const _$ValueEventUpdate(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'ValueEvent.update(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValueEventUpdate &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $ValueEventUpdateCopyWith<ValueEventUpdate> get copyWith =>
      _$ValueEventUpdateCopyWithImpl<ValueEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) update,
  }) {
    return update(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ValueEventUpdate implements ValueEvent {
  const factory ValueEventUpdate(int value) = _$ValueEventUpdate;

  @override
  int get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ValueEventUpdateCopyWith<ValueEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
