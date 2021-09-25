import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state/src/counter/counter_state.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(CounterState()) CounterState counterState,
  }) = _AppState;
}
