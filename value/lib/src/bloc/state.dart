import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class ValueState with _$ValueState {
  const factory ValueState({
    @Default(0) int value,
  }) = _ValueState;

  const ValueState._();
}
