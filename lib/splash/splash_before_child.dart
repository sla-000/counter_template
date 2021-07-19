import 'package:example/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class SplashBeforeChild extends StatelessWidget {
  const SplashBeforeChild({
    Key? key,
    this.duration = const Duration(seconds: 3),
    required this.child,
  }) : super(key: key);

  final Duration duration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: Future<void>.delayed(duration),
      builder: (_, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: SplashScreen(),
          );
        } else {
          return child;
        }
      },
    );
  }
}
