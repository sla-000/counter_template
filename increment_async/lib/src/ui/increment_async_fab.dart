import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:increment_async/src/bloc/event.dart';
import 'package:increment_async/src/bloc/increment_async_bloc.dart';
import 'package:increment_async/src/bloc/state.dart';
import 'package:state/state.dart';

class IncrementAsyncFab extends StatelessWidget {
  const IncrementAsyncFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IncrementAsyncBloc>(
      create: (_) => IncrementAsyncBloc(
        rootBloc: context.read<AppStateBloc>(),
      ),
      child: const _IncrementAsyncFab(),
    );
  }
}

class _IncrementAsyncFab extends StatelessWidget {
  const _IncrementAsyncFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncrementAsyncBloc, IncrementAsyncState>(
      builder: (BuildContext context, IncrementAsyncState incrementAsyncState) {
        final bool busy = incrementAsyncState.busy;

        return FloatingActionButton(
          child: busy ? const CupertinoActivityIndicator() : const Icon(Icons.queue_sharp),
          backgroundColor: busy ? Colors.grey[300] : null,
          onPressed: busy
              ? null
              : () {
                  final IncrementAsyncBloc incrementAsyncBloc = context.read<IncrementAsyncBloc>();

                  incrementAsyncBloc.add(const IncrementAsyncEvent.exec());
                },
        );
      },
    );
  }
}
