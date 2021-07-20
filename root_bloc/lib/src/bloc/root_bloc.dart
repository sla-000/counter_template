import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:root_bloc/src/events/event.dart';

class RootBloc<S> extends Bloc<UpdateEvent<S>, S> {
  RootBloc({
    required S initialState,
  }) : super(initialState);

  void replace(S state) => add(UpdateEvent<S>(state));

  void update(S Function(S state) stateUpdater) => replace(stateUpdater(state));

  @override
  Stream<S> mapEventToState(UpdateEvent<S> event) async* {
    yield event.state;
  }
}
