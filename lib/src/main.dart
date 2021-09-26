import 'package:counter_template/src/main_widget.dart';
import 'package:counter_template/src/utils/crash_handling.dart';
import 'package:counter_template/src/utils/firebase.dart';
import 'package:counter_template/src/utils/logging.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('Main');

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  initLogging();
  _log.info(() => 'Started');

  initFirebase();

  initCrashHandling(() => runApp(const CounterTemplateApp()));
}
