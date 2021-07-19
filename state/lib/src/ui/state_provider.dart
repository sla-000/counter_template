import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/state.dart';

class StateProvider extends StatelessWidget {
  const StateProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StateBloc>(
      create: (_) => StateBloc(),
      child: child,
    );
  }
}
