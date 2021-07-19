import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class IncrementAsyncState with _$IncrementAsyncState {
  const factory IncrementAsyncState({
    @Default(false) bool busy,
  }) = _IncrementAsyncState;
}
