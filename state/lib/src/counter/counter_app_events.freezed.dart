// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'counter_app_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounterAppEventsTearOff {
  const _$CounterAppEventsTearOff();

  CounterAppEventsIncrement increment({int addValue = 1}) {
    return CounterAppEventsIncrement(
      addValue: addValue,
    );
  }
}

/// @nodoc
const $CounterAppEvents = _$CounterAppEventsTearOff();

/// @nodoc
mixin _$CounterAppEvents {
  int get addValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int addValue) increment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int addValue)? increment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterAppEventsIncrement value) increment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterAppEventsIncrement value)? increment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterAppEventsCopyWith<CounterAppEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterAppEventsCopyWith<$Res> {
  factory $CounterAppEventsCopyWith(
          CounterAppEvents value, $Res Function(CounterAppEvents) then) =
      _$CounterAppEventsCopyWithImpl<$Res>;
  $Res call({int addValue});
}

/// @nodoc
class _$CounterAppEventsCopyWithImpl<$Res>
    implements $CounterAppEventsCopyWith<$Res> {
  _$CounterAppEventsCopyWithImpl(this._value, this._then);

  final CounterAppEvents _value;
  // ignore: unused_field
  final $Res Function(CounterAppEvents) _then;

  @override
  $Res call({
    Object? addValue = freezed,
  }) {
    return _then(_value.copyWith(
      addValue: addValue == freezed
          ? _value.addValue
          : addValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $CounterAppEventsIncrementCopyWith<$Res>
    implements $CounterAppEventsCopyWith<$Res> {
  factory $CounterAppEventsIncrementCopyWith(CounterAppEventsIncrement value,
          $Res Function(CounterAppEventsIncrement) then) =
      _$CounterAppEventsIncrementCopyWithImpl<$Res>;
  @override
  $Res call({int addValue});
}

/// @nodoc
class _$CounterAppEventsIncrementCopyWithImpl<$Res>
    extends _$CounterAppEventsCopyWithImpl<$Res>
    implements $CounterAppEventsIncrementCopyWith<$Res> {
  _$CounterAppEventsIncrementCopyWithImpl(CounterAppEventsIncrement _value,
      $Res Function(CounterAppEventsIncrement) _then)
      : super(_value, (v) => _then(v as CounterAppEventsIncrement));

  @override
  CounterAppEventsIncrement get _value =>
      super._value as CounterAppEventsIncrement;

  @override
  $Res call({
    Object? addValue = freezed,
  }) {
    return _then(CounterAppEventsIncrement(
      addValue: addValue == freezed
          ? _value.addValue
          : addValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CounterAppEventsIncrement implements CounterAppEventsIncrement {
  const _$CounterAppEventsIncrement({this.addValue = 1});

  @JsonKey(defaultValue: 1)
  @override
  final int addValue;

  @override
  String toString() {
    return 'CounterAppEvents.increment(addValue: $addValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CounterAppEventsIncrement &&
            (identical(other.addValue, addValue) ||
                const DeepCollectionEquality()
                    .equals(other.addValue, addValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(addValue);

  @JsonKey(ignore: true)
  @override
  $CounterAppEventsIncrementCopyWith<CounterAppEventsIncrement> get copyWith =>
      _$CounterAppEventsIncrementCopyWithImpl<CounterAppEventsIncrement>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int addValue) increment,
  }) {
    return increment(addValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int addValue)? increment,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(addValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterAppEventsIncrement value) increment,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterAppEventsIncrement value)? increment,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class CounterAppEventsIncrement implements CounterAppEvents {
  const factory CounterAppEventsIncrement({int addValue}) =
      _$CounterAppEventsIncrement;

  @override
  int get addValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CounterAppEventsIncrementCopyWith<CounterAppEventsIncrement> get copyWith =>
      throw _privateConstructorUsedError;
}
