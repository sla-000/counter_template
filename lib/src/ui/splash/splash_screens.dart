import 'package:counter_template/counter_template.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SplashScreens extends StatelessWidget {
  const SplashScreens({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final TemplateSettings settings = GetIt.I.get<TemplateSettings>();

    if (settings.firstSplashScreen.splashWidget != null && settings.secondSplashScreen.splashWidget != null) {
      return _FirstSplashScreen(
        settings: settings.firstSplashScreen,
        child: SplashThenChild(
          duration: settings.secondSplashScreen.showTime,
          transition: settings.secondSplashScreen.animationTime,
          splash: settings.secondSplashScreen.splashWidget!,
          child: child,
        ),
      );
    } else if (settings.firstSplashScreen.splashWidget != null) {
      return _FirstSplashScreen(
        settings: settings.firstSplashScreen,
        child: child,
      );
    } else {
      return child;
    }
  }
}

class _FirstSplashScreen extends StatelessWidget {
  const _FirstSplashScreen({
    Key? key,
    required this.settings,
    required this.child,
  }) : super(key: key);

  final SplashScreenSettings settings;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SplashThenChild(
      duration: settings.showTime,
      transition: settings.animationTime,
      splash: settings.splashWidget!,
      child: child,
    );
  }
}
