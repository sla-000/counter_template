import 'package:flutter/material.dart';
import 'package:increment/increment.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';
import 'package:states/states.dart';
import 'package:value/value.dart';

void main() {
  runApp(const FlutterReduxApp(
    title: 'Flutter counter template with\nredux, bloc and freezed',
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
    return Provider<Store<AppState>>(
      create: _createStore,
      dispose: _disposeStore,
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

  void _disposeStore(BuildContext context, Store<AppState> store) =>
      store.teardown();

  Store<AppState> _createStore(BuildContext context) => Store<AppState>(
        combineReducers(<Reducer<AppState>>[
          incrementReducers,
        ]),
        initialState: const AppState(),
      );
}
