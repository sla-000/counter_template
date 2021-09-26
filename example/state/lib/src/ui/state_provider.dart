import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/src/app_state_bloc.dart';

class StateProvider extends StatelessWidget {
  const StateProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppStateBloc>(
      create: (_) => AppStateBloc(),
      child: child,
    );
  }
}
