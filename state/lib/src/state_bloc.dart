import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/src/event.dart';
import 'package:state/state.dart';

class StateBloc extends Bloc<StateEvent, AppState> {
  StateBloc() : super(const AppState());

  @override
  Stream<AppState> mapEventToState(StateEvent event) async* {
    yield* event.map<Stream<AppState>>(
      update: (StateEventUpdate event) => _update(event.appState),
    );
  }

  Stream<AppState> _update(AppState appState) async* {
    yield appState;
  }
}
