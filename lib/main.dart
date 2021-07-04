import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:increment/increment.dart';
import 'package:state/state.dart';
import 'package:value/value.dart';

void main() {
  runApp(const FlutterReduxApp(
    title: 'Flutter counter template with\nstate, blocs, l10n, nav, freezed etc',
  ));
}

class FlutterReduxApp extends StatelessWidget {
  const FlutterReduxApp({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StateBloc>(
      create: (_) => StateBloc(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
          body: const Center(
            child: ValueView(),
          ),
          floatingActionButton: Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              IncrementFab(),
              SizedBox(width: 16),
              IncrementTwoFab(),
            ],
          ),
        ),
      ),
    );
  }
}
