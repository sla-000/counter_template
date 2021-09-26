import 'package:flutter/material.dart';

class SplashThenChild extends StatelessWidget {
  const SplashThenChild({
    Key? key,
    this.duration = const Duration(seconds: 2),
    this.transition = const Duration(milliseconds: 500),
    required this.splash,
    required this.child,
  }) : super(key: key);

  final Duration duration;
  final Duration transition;
  final Widget splash;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: Future<void>.delayed(duration),
      builder: (_, AsyncSnapshot<void> snapshot) {
        return AnimatedSwitcher(
          duration: transition,
          child: snapshot.connectionState == ConnectionState.waiting
              ? MaterialApp(
                  home: splash,
                )
              : child,
        );
      },
    );
  }
}
