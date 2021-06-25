import 'package:actions/src/base/base_action.dart';

class IncrementValueAction extends BaseAction<int> {
  IncrementValueAction(int value) : super(value);
}
