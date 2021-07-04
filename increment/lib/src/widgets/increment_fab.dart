import 'package:flutter/material.dart';
import 'package:state/state.dart';

class IncrementFab extends StatelessWidget {
  const IncrementFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.plus_one),
      onPressed: () {
        context.appStateBuild((AppState appState) => appState.copyWith(
              counter: appState.counter + 1,
            ));
      },
    );
  }
}
