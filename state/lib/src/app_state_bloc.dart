import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/src/app_events.dart';
import 'package:state/src/counter/counter_app_events.dart';
import 'package:state/src/counter/counter_update.dart';
import 'package:state/state.dart';

class AppStateBloc extends Bloc<AppEvents, AppState> {
  AppStateBloc() : super(const AppState()) {
    on<CounterAppEvents>((CounterAppEvents event, Emitter<AppState> emit) => counterUpdate(state, event, emit));
  }

  @override
  void onTransition(Transition<AppEvents, AppState> transition) {
    super.onTransition(transition);
    print('onTransition: transition=$transition');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('onError: error=$error, stackTrace=$stackTrace');
    super.onError(error, stackTrace);
  }
}
