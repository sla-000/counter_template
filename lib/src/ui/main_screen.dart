import 'package:counter_template/src/interfaces/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<LocalizationsDelegate<Object>> l10nDelegates = GetIt.I.get<List<LocalizationsDelegate<Object>>>();

    return MaterialApp(
      theme: GetIt.I.get<ThemeData>(),
      // darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.system,
      // onGenerateTitle: (BuildContext context) => L10n.of(context).title,
      onGenerateTitle: (BuildContext context) => 'Title',
      localizationsDelegates: <LocalizationsDelegate<Object>>[
        ...l10nDelegates,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: GetIt.I.get<List<Locale>>(),
      home: GetIt.I.get<HomeWidget>(),
    );
  }
}
