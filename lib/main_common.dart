import 'package:example/screens/main/main_screen.dart';
import 'package:example/splash/splash_before_child.dart';
import 'package:flutter/material.dart';
import 'package:state/state.dart';

class FlutterPridurxApp extends StatelessWidget {
  const FlutterPridurxApp({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SplashBeforeChild(
      child: StateProvider(
        child: MainScreen(
          title: title,
        ),
      ),
    );
  }
}
