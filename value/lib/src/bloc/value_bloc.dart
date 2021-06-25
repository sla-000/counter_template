import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redux/redux.dart';
import 'package:states/states.dart';
import 'package:value/src/bloc/event.dart';
import 'package:value/src/bloc/state.dart';

class ValueBloc extends Bloc<ValueEvent, ValueState> {
  ValueBloc({
    required this.store,
  }) : super(const ValueState()) {
    _counterSubscription = store.onChange.map((AppState state) => state.counter).distinct().listen(
      (int counter) {
        add(ValueEvent.update(counter));
      },
    );
  }

  final Store<AppState> store;

  late final StreamSubscription<int> _counterSubscription;

  @override
  Future<void> close() {
    _counterSubscription.cancel();

    return super.close();
  }

  @override
  Stream<ValueState> mapEventToState(ValueEvent event) async* {
    yield* event.map<Stream<ValueState>>(
      update: (ValueEventUpdate event) => _update(event.value),
    );
  }

  Stream<ValueState> _update(int value) async* {
    yield state.copyWith(value: value);
  }
}
