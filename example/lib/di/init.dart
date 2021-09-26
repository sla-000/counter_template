import 'package:counter_template/counter_template.dart' as template;
import 'package:counter_template/counter_template.dart';
import 'package:example/di/settings.dart';
import 'package:example/l10n/generated/l10n.dart';
import 'package:example/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:state/state.dart';

void initDi() {
  GetIt.I.registerLazySingleton<template.HomeWidget>(() => const HomeScreen());
  GetIt.I.registerLazySingleton<List<LocalizationsDelegate<Object>>>(
    () => <LocalizationsDelegate<Object>>[
      L10n.delegate,
    ],
  );
  GetIt.I.registerLazySingleton<List<Locale>>(() => L10n.delegate.supportedLocales);

  GetIt.I.registerLazySingleton<ThemeData>(() => ThemeData(primarySwatch: Colors.purple));

  GetIt.I.registerSingleton<template.TemplateSettings>(settings);

  GetIt.I.registerSingleton<RootBuilder>((Widget child) => BlocProvider<AppStateBloc>(
        create: (_) => AppStateBloc(),
        child: child,
      ));
}
