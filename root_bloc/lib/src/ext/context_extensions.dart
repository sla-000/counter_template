import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:root_bloc/src/bloc/root_bloc.dart';

extension ContextStateBloc on BuildContext {
  RootBloc<S> rootBloc<S>() => read<RootBloc<S>>();

  S stateValue<S>() => rootBloc<S>().state;
  SubS stateSubValue<S, SubS>(SubS Function(S state) mapper) => mapper(stateValue<S>());

  Stream<S> stateStream<S>() => rootBloc<S>().stream;
  Stream<SubS> stateSubStream<S, SubS>(SubS Function(S state) mapper) => stateStream<S>().map(mapper);

  void stateReplace<S>(S appState) => rootBloc<S>().replace(appState);
  void stateUpdate<S>(S Function(S appState) stateUpdater) => rootBloc<S>().update(stateUpdater);
}
