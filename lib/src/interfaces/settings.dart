import 'package:flutter/material.dart';
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
    this.firebaseEnabled = false,
    this.crashlyticsEnabled = false,
    this.themeMode = ThemeMode.light,
  });

  final SplashScreenSettings firstSplashScreen;
  final SplashScreenSettings secondSplashScreen;

  final bool firebaseEnabled;
  final bool crashlyticsEnabled;

  final ThemeMode themeMode;
}
