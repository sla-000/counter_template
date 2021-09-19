import 'package:flutter/material.dart';
import 'package:flutter_neat_state/flutter_neat_state.dart';
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
      onPressed: () => context.neatUpdate<AppState>(
        (AppState appState) => appState.copyWith(
          counter: appState.counter + kBaseIncrement,
          lastIncrement: kBaseIncrement,
        ),
      ),
    );
  }
}
