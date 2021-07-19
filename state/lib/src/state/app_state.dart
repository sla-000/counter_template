import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(0) int counter,
    @Default(0) int lastIncrement,
  }) = _AppState;
}
