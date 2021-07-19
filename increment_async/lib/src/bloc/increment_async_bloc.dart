import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:increment_async/src/bloc/event.dart';
import 'package:increment_async/src/bloc/state.dart';
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
    stateBloc.add(event);

    yield state.copyWith(busy: false);
  }

  Future<int> _getIncrement() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    return Random.secure().nextInt(5) + 1;
  }
}
