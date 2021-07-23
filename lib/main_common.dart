import 'package:example/screens/main/main_screen.dart';
import 'package:example/splash/app_splash_screen.dart';
import 'package:example/splash/brand_splash_screen.dart';
import 'package:example/splash/fade_in.dart';
import 'package:example/splash/splash_then_child.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FlutterPridurxApp extends StatelessWidget {
  const FlutterPridurxApp({
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
