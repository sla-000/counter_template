import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neat_state/flutter_neat_state.dart';
import 'package:state/state.dart';
import 'package:value_history/src/bloc/event.dart';
import 'package:value_history/src/bloc/state.dart';
import 'package:value_history/src/bloc/value_history_bloc.dart';
import 'package:value_history/src/ui/history_item.dart';

class ValueHistoryView extends StatelessWidget {
  const ValueHistoryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ValueHistoryBloc>(
      create: (_) => ValueHistoryBloc(rootBloc: context.neatState<AppState>()),
      child: const _ValueHistoryView(),
    );
  }
}

class _ValueHistoryView extends StatelessWidget {
  const _ValueHistoryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ValueHistoryBloc, ValueHistoryState>(
      builder: (BuildContext context, ValueHistoryState valueHistoryState) {
        final Map<int, int> unixTimeIncrementMap = valueHistoryState.unixTimeIncrementMap;
        final Iterable<int> historyList = unixTimeIncrementMap.keys;

        return SizedBox(
          height: 170,
          width: 120,
          child: Stack(
            children: <Widget>[
              for (final int unixTime in historyList)
                HistoryItem(
                  key: Key('$unixTime'),
                  increment: unixTimeIncrementMap[unixTime]!,
                  onCompleted: () {
                    context.read<ValueHistoryBloc>().add(ValueHistoryEventRemove(unixTime));
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
