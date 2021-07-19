import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:increment_async/src/events/event.dart';
import 'package:increment_async/src/state/state.dart';
import 'package:state/state.dart';

class IncrementAsyncBloc extends Bloc<IncrementAsyncEvent, IncrementAsyncState> {
  IncrementAsyncBloc({
    required this.stateBloc,
  }) : super(const IncrementAsyncState());

  final StateBloc stateBloc;

  @override
  Stream<IncrementAsyncState> mapEventToState(IncrementAsyncEvent event) async* {
    yield* event.map<Stream<IncrementAsyncState>>(
      exec: (IncrementAsyncExec event) => _exec(),
    );
  }

  Stream<IncrementAsyncState> _exec() async* {
    yield state.copyWith(busy: true);

    final int increment = await _getIncrement();

    stateBloc.update(
      (AppState appState) => appState.copyWith(
        counter: appState.counter + increment,
        lastIncrement: increment,
      ),
    );

    yield state.copyWith(busy: false);
  }

  Future<int> _getIncrement() async {
    await Future<void>.delayed(Duration(seconds: Random.secure().nextInt(1) + 2));

    return Random.secure().nextInt(10) + 2;
  }
}
