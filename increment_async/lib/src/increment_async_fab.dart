import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:increment_async/src/bloc/increment_async_bloc.dart';

class IncrementTwoFab extends StatelessWidget {
  const IncrementTwoFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IncrementAsyncBloc>(
      create: (_) => IncrementAsyncBloc(),
      child: const _IncrementTwoFab(),
    );
  }
}

class _IncrementTwoFab extends StatelessWidget {
  const _IncrementTwoFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IncrementAsyncBloc>(
      create: (_) => IncrementAsyncBloc(),
      child: FloatingActionButton(
        child: const Icon(Icons.exposure_plus_2),
        onPressed: () {
          // Option 1
          // context.appStateBuild((AppState appState) => appState.copyWith(
          //       counter: appState.counter + 2,
          //     ));

          // Option 2
          // context.appStateUpdate(context.appState.copyWith(
          //   counter: context.appState.counter + 2,
          // ));
        },
      ),
    );
  }
}
