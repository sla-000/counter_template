import 'package:actions/actions.dart';
import 'package:states/states.dart';

AppState incrementValueReducer(AppState state, IncrementValueAction action) =>
    state.copyWith(
      counter: state.counter + (action.payload ?? 0),
    );
