import 'package:counter_template/counter_template.dart' as template;
import 'package:example/l10n/generated/l10n.dart';
import 'package:example/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void initDI() {
  GetIt.I.registerLazySingleton<template.Home>(() => const HomeScreen());
  GetIt.I.registerLazySingleton<List<LocalizationsDelegate<Object>>>(
    () => <LocalizationsDelegate<Object>>[
      L10n.delegate,
    ],
  );
  GetIt.I.registerLazySingleton<List<Locale>>(() => L10n.delegate.supportedLocales);
}
