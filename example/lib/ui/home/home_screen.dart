import 'package:counter_template/counter_template.dart' as template;
import 'package:example/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:increment/increment.dart';
import 'package:increment_async/increment_async.dart';
import 'package:value/value.dart';
import 'package:value_history/value_history.dart';

class HomeScreen extends StatelessWidget implements template.Home {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          L10n.of(context).fullTitle,
          textAlign: TextAlign.center,
        ),
      ),
      body: const Center(
        child: ValueView(),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ValueHistoryView(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              IncrementFab(),
              SizedBox(width: 16),
              IncrementAsyncFab(),
            ],
          ),
        ],
      ),
    );
  }
}
