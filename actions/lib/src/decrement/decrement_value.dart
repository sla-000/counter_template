import 'package:actions/src/base/base_action.dart';

class DecrementValueAction extends BaseAction<int> {
  DecrementValueAction(int value) : super(value);
}
