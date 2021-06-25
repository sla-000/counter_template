import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';
import 'package:states/states.dart';

extension ContextStore on BuildContext {
  Store<AppState> get store => read<Store<AppState>>();
}
