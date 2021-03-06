import 'package:beamer/beamer.dart';
import 'package:counter_template/src/interfaces/settings.dart';
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

    return MaterialApp.router(
      theme: GetIt.I.get<ThemeData>(),
      darkTheme: GetIt.I.get<ThemeData>(instanceName: 'dark'),
      themeMode: GetIt.I.get<TemplateSettings>().themeMode,
      // onGenerateTitle: (BuildContext context) => L10n.of(context).title,
      onGenerateTitle: (BuildContext context) => 'Title',
      routeInformationParser: BeamerParser(),
      routerDelegate: GetIt.I.get<RouterDelegate<Object>>(),
      localizationsDelegates: <LocalizationsDelegate<Object>>[
        ...l10nDelegates,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: GetIt.I.get<List<Locale>>(),
      // home: GetIt.I.get<HomeWidget>(),
    );
  }
}
