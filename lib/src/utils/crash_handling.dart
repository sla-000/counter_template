import 'dart:async';
import 'dart:io';

import 'package:counter_template/src/interfaces/settings.dart';
import 'package:counter_template/src/utils/os.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

const List<Type> notReportedExceptions = [
  HandshakeException,
  SocketException,
  HttpException,
  NetworkImageLoadException,
];

final Logger _log = Logger('CrashHandling');

void initCrashHandling(void Function() runApp) {
  FlutterError.onError = (FlutterErrorDetails details) async {
    Zone.current.handleUncaughtError(details.exception, details.stack!);
  };

  if (isMobile) {
    FlutterError.onError = (FlutterErrorDetails details) async {
      final bool doReport = !notReportedExceptions.contains(details.exception.runtimeType);
      if (doReport && GetIt.I.get<TemplateSettings>().crashlyticsEnabled) {
        await FirebaseCrashlytics.instance.recordFlutterError(details);
      }
    };
  }

  runZonedGuarded<void>(
    runApp,
    (Object error, StackTrace stackTrace) {
      _log.severe(() => 'runZonedGuarded:', error, stackTrace);

      final bool doReport = !notReportedExceptions.contains(error.runtimeType);
      if (!isDesktop && kReleaseMode && doReport && GetIt.I.get<TemplateSettings>().crashlyticsEnabled) {
        FirebaseCrashlytics.instance.recordError(error, stackTrace);
      }
    },
  );
}
