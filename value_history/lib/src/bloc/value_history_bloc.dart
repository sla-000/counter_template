import 'dart:async';

import 'package:bredux/bredux.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/state.dart';
import 'package:value_history/src/bloc/event.dart';
import 'package:value_history/src/bloc/state.dart';

class ValueHistoryBloc extends Bloc<ValueHistoryEvent, ValueHistoryState> {
  ValueHistoryBloc({
    required this.rootBloc,
  }) : super(const ValueHistoryState()) {
    _subscribe();
  }

  final Bredux<AppState> rootBloc;
  late final StreamSubscription<int> lastIncrementSub;

  @override
  Future<void> close() {
    lastIncrementSub.cancel();
    return super.close();
  }

  @override
  Stream<ValueHistoryState> mapEventToState(ValueHistoryEvent event) async* {
    yield* event.map<Stream<ValueHistoryState>>(
      add: (ValueHistoryEventAdd event) => _add(
        increment: event.increment,
        unixTime: event.unixTime,
      ),
      remove: (ValueHistoryEventRemove event) => _remove(
        unixTime: event.unixTime,
      ),
    );
  }

  Stream<ValueHistoryState> _add({
    required int increment,
    required int unixTime,
  }) async* {
    final Map<int, int> old = Map<int, int>.of(state.unixTimeIncrementMap);

    final Map<int, int> updated = old
      ..addAll(
        <int, int>{
          unixTime: increment,
        },
      );

    yield state.copyWith(
      unixTimeIncrementMap: updated,
    );
  }

  Stream<ValueHistoryState> _remove({
    required int unixTime,
  }) async* {
    final Map<int, int> old = Map<int, int>.of(state.unixTimeIncrementMap);

    final Map<int, int> updated = old
      ..removeWhere(
        (int key, _) => key == unixTime,
      );

    yield state.copyWith(
      unixTimeIncrementMap: updated,
    );
  }

  void _subscribe() {
    lastIncrementSub = rootBloc.stream
        .map(
      (AppState appState) => appState.lastIncrement,
    )
        .listen(
      (int lastIncrement) {
        add(
          ValueHistoryEvent.add(
            unixTime: DateTime.now().millisecondsSinceEpoch,
            increment: lastIncrement,
          ),
        );
      },
    );
  }
}
