import 'package:counter_template/splash/splash_then_child.dart';
import 'package:example/ui/splash/app_splash_screen.dart';
import 'package:example/ui/splash/brand_splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SplashScreens extends StatelessWidget {
  const SplashScreens({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SplashThenChild(
      splash: const BrandSplashScreen(),
      child: SplashThenChild(
        splash: const AppSplashScreen(),
        child: child,
      ),
    );
  }
}
