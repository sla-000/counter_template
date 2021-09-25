import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/src/counter/counter_app_events.dart';
import 'package:state/state.dart';

void counterUpdate(AppState state, CounterAppEvents event, Emitter<AppState> emit) {
  event.when(
    increment: (int addValue) => _increment(state, emit, addValue),
  );
}

void _increment(AppState state, Emitter<AppState> emit, int addValue) {
  emit(
    state.copyWith.counterState(
      counter: state.counterState.counter + addValue,
      lastIncrement: addValue,
    ),
  );
}
