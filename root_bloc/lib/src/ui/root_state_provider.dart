import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:root_bloc/src/bloc/root_bloc.dart';

class RootStateProvider<S> extends StatelessWidget {
  const RootStateProvider({
    Key? key,
    required this.initialState,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final S initialState;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RootBloc<S>>(
      create: (_) => RootBloc<S>(initialState: initialState),
      child: child,
    );
  }
}
