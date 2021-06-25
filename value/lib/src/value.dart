import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils/utils.dart';
import 'package:value/src/bloc/state.dart';
import 'package:value/src/bloc/value_bloc.dart';

class ValueView extends StatelessWidget {
  const ValueView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ValueBloc>(
      create: (BuildContext context) => ValueBloc(store: context.store),
      child: const _CounterValue(),
    );
  }
}

class _CounterValue extends StatelessWidget {
  const _CounterValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ValueBloc, ValueState>(
      builder: (BuildContext context, ValueState state) {
        return Text(
          'Counter: ${state.value}',
          style: Theme.of(context).textTheme.headline2,
        );
      },
    );
  }
}
