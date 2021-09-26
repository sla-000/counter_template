import 'package:flutter/widgets.dart';

class SplashScreenSettings {
  const SplashScreenSettings({
    this.splashWidget,
    this.showTime = const Duration(seconds: 2),
    this.animationTime = const Duration(milliseconds: 500),
  });

  final Widget? splashWidget;
  final Duration showTime;
  final Duration animationTime;
}

class TemplateSettings {
  const TemplateSettings({
    this.firstSplashScreen = const SplashScreenSettings(),
    this.secondSplashScreen = const SplashScreenSettings(),
  });

  final SplashScreenSettings firstSplashScreen;
  final SplashScreenSettings secondSplashScreen;
}
