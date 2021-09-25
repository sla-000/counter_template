import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:increment_async/src/bloc/event.dart';
import 'package:increment_async/src/bloc/state.dart';
import 'package:state/state.dart';

class IncrementAsyncBloc extends Bloc<IncrementAsyncEvent, IncrementAsyncState> {
  IncrementAsyncBloc({
    required this.appStateBloc,
  }) : super(const IncrementAsyncState());

  final AppStateBloc appStateBloc;

  @override
  Stream<IncrementAsyncState> mapEventToState(IncrementAsyncEvent event) async* {
    yield* event.map<Stream<IncrementAsyncState>>(
      exec: (IncrementAsyncExec event) => _exec(),
    );
  }

  Stream<IncrementAsyncState> _exec() async* {
    yield state.copyWith(busy: true);

    final int addValue = await _getIncrement();

    appStateBloc.add(CounterAppEvents.increment(addValue: addValue));

    yield state.copyWith(busy: false);
  }

  Future<int> _getIncrement() async {
    await Future<void>.delayed(Duration(seconds: Random.secure().nextInt(1) + 2));

    return Random.secure().nextInt(10) + 2;
  }
}
