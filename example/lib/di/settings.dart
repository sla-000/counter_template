import 'package:counter_template/counter_template.dart' as template;
import 'package:example/l10n/generated/l10n.dart';
import 'package:example/ui/home/home_screen.dart';
import 'package:example/ui/splash/app_splash_screen.dart';
import 'package:example/ui/splash/brand_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

const template.TemplateSettings settings = template.TemplateSettings(
  firstSplashScreen: template.SplashScreenSettings(
    splashWidget: BrandSplashScreen(),
  ),
  secondSplashScreen: template.SplashScreenSettings(
    splashWidget: AppSplashScreen(),
  ),
);
