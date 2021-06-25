import 'package:actions/actions.dart';
import 'package:increment/src/reducers/increment.dart';
import 'package:increment/src/reducers/increment_value.dart';
import 'package:redux/redux.dart';
import 'package:states/states.dart';

final Reducer<AppState> incrementReducers = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, IncrementAction>(incrementReducer),
  TypedReducer<AppState, IncrementValueAction>(incrementValueReducer),
]);
