import 'package:counter_template/src/interfaces/root_builder.dart';
import 'package:counter_template/src/ui/main_screen.dart';
import 'package:counter_template/src/ui/splash/fade_in.dart';
import 'package:counter_template/src/ui/splash/splash_screens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CounterTemplateApp extends StatelessWidget {
  const CounterTemplateApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FadeIn(
      child: kDebugMode
          ? _MainScreen()
          : SplashScreens(
              child: _MainScreen(),
            ),
    );
  }
}

class _MainScreen extends StatelessWidget {
  const _MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RootBuilder rootBuilder = GetIt.I.get<RootBuilder>();
    return rootBuilder(const MainScreen());
  }
}
