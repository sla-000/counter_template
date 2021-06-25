import 'package:actions/actions.dart';
import 'package:states/states.dart';

AppState incrementReducer(AppState state, IncrementAction action) =>
    state.copyWith(
      counter: state.counter + 1,
    );
