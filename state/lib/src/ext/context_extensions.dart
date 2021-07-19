import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/src/bloc/state_bloc.dart';
import 'package:state/src/state/app_state.dart';

extension ContextStateBloc on BuildContext {
  StateBloc get stateBloc => read<StateBloc>();
}

extension ContextAppState on BuildContext {
  AppState get appState => stateBloc.state;

  SubState subState<SubState>(SubState Function(AppState state) mapper) => mapper(stateBloc.state);
}

extension ContextAppStream on BuildContext {
  Stream<AppState> get appStream => stateBloc.stream;

  Stream<SubState> subStream<SubState>(SubState Function(AppState state) mapper) => appStream.map(mapper);
}

extension ContextStateChange on BuildContext {
  void appStateReplace(AppState appState) => stateBloc.replace(appState);

  void appStateUpdate(AppState Function(AppState appState) stateUpdater) => stateBloc.update(stateUpdater);
}
