import 'package:actions/actions.dart';
import 'package:flutter/material.dart';
import 'package:utils/utils.dart';

class IncrementFab extends StatelessWidget {
  const IncrementFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.plus_one),
      onPressed: () {
        context.store.dispatch(IncrementAction());
      },
    );
  }
}
