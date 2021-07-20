import 'package:flutter/material.dart';
import 'package:root_bloc/root_bloc.dart';
import 'package:state/state.dart';

class IncrementFab extends StatelessWidget {
  const IncrementFab({
    Key? key,
  }) : super(key: key);

  static const int kBaseIncrement = 1;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.plus_one),
      onPressed: () => context.stateUpdate<AppState>(
        (AppState appState) => appState.copyWith(
          counter: appState.counter + kBaseIncrement,
          lastIncrement: kBaseIncrement,
        ),
      ),
    );
  }
}
