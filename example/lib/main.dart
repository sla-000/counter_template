import 'package:counter_template/counter_template.dart' as template;
import 'package:counter_template/splash/fade_in.dart';
import 'package:example/di/common.dart';
import 'package:example/ui/splash/splash_screens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/state.dart';

void main() {
  initDI();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FadeIn(
      // child: _SplashesThenMainScreen(),
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
    return BlocProvider<AppStateBloc>(
      create: (_) => AppStateBloc(),
      child: const template.CounterTemplateApp(),
    );
  }
}
