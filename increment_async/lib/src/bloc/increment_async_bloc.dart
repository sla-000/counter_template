import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:increment_async/src/bloc/event.dart';
import 'package:increment_async/src/bloc/state.dart';
import 'package:state/state.dart';

class IncrementAsyncBloc extends Bloc<IncrementAsyncEvent, IncrementAsyncState> {
  IncrementAsyncBloc({
    required this.appStateBloc,
  }) : super(const IncrementAsyncState()) {
    on<IncrementAsyncEvent>(_onIncrementAsyncEvent);
  }

  final AppStateBloc appStateBloc;

  Future<void> _onIncrementAsyncEvent(IncrementAsyncEvent event, Emitter<IncrementAsyncState> emit) async {
    await event.when<FutureOr<void>>(
      exec: () => _exec(emit),
      busyOn: () => _busyOn(emit),
      busyOff: () => _busyOff(emit),
    );
  }

  Future<void> _exec(Emitter<IncrementAsyncState> emit) async {
    add(const IncrementAsyncEvent.busyOn());

    final int addValue = await _getIncrement();

    appStateBloc.add(CounterAppEvents.increment(addValue: addValue));

    add(const IncrementAsyncEvent.busyOff());
  }

  Future<void> _busyOn(Emitter<IncrementAsyncState> emit) async {
    emit(state.copyWith(busy: true));
  }

  Future<void> _busyOff(Emitter<IncrementAsyncState> emit) async {
    emit(state.copyWith(busy: false));
  }

  Future<int> _getIncrement() async {
    await Future<void>.delayed(Duration(seconds: Random.secure().nextInt(1) + 2));

    return Random.secure().nextInt(10) + 2;
  }
}
