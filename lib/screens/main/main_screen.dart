import 'package:example/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:increment/increment.dart';
import 'package:increment_async/increment_async.dart';
import 'package:state/state.dart';
import 'package:value/value.dart';
import 'package:value_history/value_history.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppStateBloc>(
      create: (_) => AppStateBloc(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        onGenerateTitle: (BuildContext context) => L10n.of(context).title,
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          L10n.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: L10n.delegate.supportedLocales,
        home: const _Home(),
      ),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          L10n.of(context).fullTitle,
          textAlign: TextAlign.center,
        ),
      ),
      body: const Center(
        child: ValueView(),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ValueHistoryView(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              IncrementFab(),
              SizedBox(width: 16),
              IncrementAsyncFab(),
            ],
          ),
        ],
      ),
    );
  }
}
