import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/state.dart';
import 'package:value_history/src/bloc/event.dart';
import 'package:value_history/src/bloc/state.dart';

class ValueHistoryBloc extends Bloc<ValueHistoryEvent, ValueHistoryState> {
  ValueHistoryBloc({
    required this.appStateBloc,
  }) : super(const ValueHistoryState()) {
    on<ValueHistoryEvent>(_onValueHistoryEvent);

    _subscribe();
  }

  final AppStateBloc appStateBloc;

  late final StreamSubscription<int> _lastIncrementSubscription;

  @override
  Future<void> close() {
    _lastIncrementSubscription.cancel();
    return super.close();
  }

  Future<void> _onValueHistoryEvent(ValueHistoryEvent event, Emitter<ValueHistoryState> emit) async {
    await event.when<FutureOr<void>>(
      add: (int increment, int unixTime) => _add(
        increment: increment,
        unixTime: unixTime,
        emit: emit,
      ),
      remove: (int unixTime) => _remove(
        unixTime: unixTime,
        emit: emit,
      ),
    );
  }

  Future<void> _add({
    required int increment,
    required int unixTime,
    required Emitter<ValueHistoryState> emit,
  }) async {
    final Map<int, int> old = Map<int, int>.of(state.unixTimeIncrementMap);

    final Map<int, int> updated = old
      ..addAll(
        <int, int>{
          unixTime: increment,
        },
      );

    emit(state.copyWith(unixTimeIncrementMap: updated));
  }

  Future<void> _remove({
    required int unixTime,
    required Emitter<ValueHistoryState> emit,
  }) async {
    final Map<int, int> old = Map<int, int>.of(state.unixTimeIncrementMap);

    final Map<int, int> updated = old
      ..removeWhere(
        (int key, _) => key == unixTime,
      );

    emit(state.copyWith(unixTimeIncrementMap: updated));
  }

  void _subscribe() {
    _lastIncrementSubscription = appStateBloc.stream
        .map(
      (AppState appState) => appState.counterState.lastIncrement,
    )
        .listen(
      (int lastIncrement) {
        add(
          ValueHistoryEvent.add(
            increment: lastIncrement,
            unixTime: DateTime.now().millisecondsSinceEpoch,
          ),
        );
      },
    );
  }
}
