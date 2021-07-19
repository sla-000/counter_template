import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/state.dart';

class ValueView extends StatelessWidget {
  const ValueView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StateBloc, AppState>(
      builder: (BuildContext context, AppState state) {
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
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
