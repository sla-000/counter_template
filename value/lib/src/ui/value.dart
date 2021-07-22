import 'package:bredux/bredux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/state.dart';

class ValueView extends StatelessWidget {
  const ValueView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bredux<AppState>, AppState>(
      builder: (BuildContext context, AppState state) {
        return CounterValue(value: state.counter);
      },
    );
  }
}

class CounterValue extends StatelessWidget {
  const CounterValue({
    Key? key,
    required this.value,
  }) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: <Widget>[
          Text(
            'Counter:',
            style: Theme.of(context).textTheme.headline4?.copyWith(color: Theme.of(context).primaryColorDark),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Text(
              '$value',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ],
      ),
    );
  }
}
