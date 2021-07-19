import 'package:flutter/material.dart';
import 'package:increment/increment.dart';
import 'package:increment_async/increment_async.dart';
import 'package:value/value.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
        body: const Center(
          child: ValueView(),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            IncrementFab(),
            SizedBox(width: 16),
            IncrementAsyncFab(),
          ],
        ),
      ),
    );
  }
}
