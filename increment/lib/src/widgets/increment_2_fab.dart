import 'package:flutter/material.dart';
import 'package:state/state.dart';

class IncrementTwoFab extends StatelessWidget {
  const IncrementTwoFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.exposure_plus_2),
      onPressed: () {
        // Option 1
        context.appStateBuild((AppState appState) => appState.copyWith(
              counter: appState.counter + 2,
            ));

        // Option 2
        // context.appStateUpdate(context.appState.copyWith(
        //   counter: context.appState.counter + 2,
        // ));
      },
    );
  }
}
