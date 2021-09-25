import 'package:counter_template/splash/app_splash_screen.dart';
import 'package:counter_template/splash/brand_splash_screen.dart';
import 'package:counter_template/splash/fade_in.dart';
import 'package:counter_template/splash/splash_then_child.dart';
import 'package:counter_template/src/ui/main_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CounterTemplateApp());
}

class CounterTemplateApp extends StatelessWidget {
  const CounterTemplateApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FadeIn(
      // child: _SplashesThenMainScreen(),
      child: kDebugMode ? MainScreen() : _SplashesThenMainScreen(),
    );
  }
}

class _SplashesThenMainScreen extends StatelessWidget {
  const _SplashesThenMainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SplashThenChild(
      splash: BrandSplashScreen(),
      child: SplashThenChild(
        splash: AppSplashScreen(),
        child: MainScreen(),
      ),
    );
  }
}
