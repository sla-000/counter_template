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
class _$StateEventTearOff {
  const _$StateEventTearOff();

  StateEventUpdate update(AppState appState) {
    return StateEventUpdate(
      appState,
    );
  }
}

/// @nodoc
const $StateEvent = _$StateEventTearOff();

/// @nodoc
mixin _$StateEvent {
  AppState get appState => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateEventCopyWith<StateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateEventCopyWith<$Res> {
  factory $StateEventCopyWith(
          StateEvent value, $Res Function(StateEvent) then) =
      _$StateEventCopyWithImpl<$Res>;
  $Res call({AppState appState});

  $AppStateCopyWith<$Res> get appState;
}

/// @nodoc
class _$StateEventCopyWithImpl<$Res> implements $StateEventCopyWith<$Res> {
  _$StateEventCopyWithImpl(this._value, this._then);

  final StateEvent _value;
  // ignore: unused_field
  final $Res Function(StateEvent) _then;

  @override
  $Res call({
    Object? appState = freezed,
  }) {
    return _then(_value.copyWith(
      appState: appState == freezed
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppState,
    ));
  }

  @override
  $AppStateCopyWith<$Res> get appState {
    return $AppStateCopyWith<$Res>(_value.appState, (value) {
      return _then(_value.copyWith(appState: value));
    });
  }
}

/// @nodoc
abstract class $StateEventUpdateCopyWith<$Res>
    implements $StateEventCopyWith<$Res> {
  factory $StateEventUpdateCopyWith(
          StateEventUpdate value, $Res Function(StateEventUpdate) then) =
      _$StateEventUpdateCopyWithImpl<$Res>;
  @override
  $Res call({AppState appState});

  @override
  $AppStateCopyWith<$Res> get appState;
}

/// @nodoc
class _$StateEventUpdateCopyWithImpl<$Res>
    extends _$StateEventCopyWithImpl<$Res>
    implements $StateEventUpdateCopyWith<$Res> {
  _$StateEventUpdateCopyWithImpl(
      StateEventUpdate _value, $Res Function(StateEventUpdate) _then)
      : super(_value, (v) => _then(v as StateEventUpdate));

  @override
  StateEventUpdate get _value => super._value as StateEventUpdate;

  @override
  $Res call({
    Object? appState = freezed,
  }) {
    return _then(StateEventUpdate(
      appState == freezed
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppState,
    ));
  }
}

/// @nodoc

class _$StateEventUpdate implements StateEventUpdate {
  const _$StateEventUpdate(this.appState);

  @override
  final AppState appState;

  @override
  String toString() {
    return 'StateEvent.update(appState: $appState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateEventUpdate &&
            (identical(other.appState, appState) ||
                const DeepCollectionEquality()
                    .equals(other.appState, appState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appState);

  @JsonKey(ignore: true)
  @override
  $StateEventUpdateCopyWith<StateEventUpdate> get copyWith =>
      _$StateEventUpdateCopyWithImpl<StateEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) update,
  }) {
    return update(appState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(appState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class StateEventUpdate implements StateEvent {
  const factory StateEventUpdate(AppState appState) = _$StateEventUpdate;

  @override
  AppState get appState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StateEventUpdateCopyWith<StateEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
