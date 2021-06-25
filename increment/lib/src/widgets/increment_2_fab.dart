import 'package:actions/actions.dart';
import 'package:flutter/material.dart';
import 'package:utils/utils.dart';

class IncrementTwoFab extends StatelessWidget {
  const IncrementTwoFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.exposure_plus_2),
      onPressed: () {
        context.store.dispatch(IncrementValueAction(2));
      },
    );
  }
}
