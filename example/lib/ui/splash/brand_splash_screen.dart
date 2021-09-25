import 'package:flutter/material.dart';

class BrandSplashScreen extends StatelessWidget {
  const BrandSplashScreen({
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
              size: MediaQuery.of(context).size.width * 0.5,
            ),
            const SizedBox(height: 24),
            const Text('Brand logo'),
          ],
        ),
      ),
    );
  }
}
