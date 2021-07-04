import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/src/app_state.dart';
import 'package:state/src/event.dart';
import 'package:state/src/state_bloc.dart';

extension ContextAppStateUpdate on BuildContext {
  StateBloc get stateBloc => read<StateBloc>();

  AppState get appState => stateBloc.state;

  void appStateUpdate(AppState appState) => stateBloc.add(
        StateEvent.update(appState),
      );

  void appStateBuild(AppState Function(AppState appState) stateBuilder) => stateBloc.add(
        StateEvent.update(stateBuilder(appState)),
      );
}
