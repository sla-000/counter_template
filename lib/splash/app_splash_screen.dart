import 'package:flutter/material.dart';

class AppSplashScreen extends StatelessWidget {
  const AppSplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlutterLogo(
              size: MediaQuery.of(context).size.width * 0.3,
            ),
            const SizedBox(height: 24),
            const Text('Common app template'),
          ],
        ),
      ),
    );
  }
}
