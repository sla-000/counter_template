import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

void initLogging() {
  if (kDebugMode) {
    Logger.root.level = Level.ALL;
  } else if (kProfileMode) {
    Logger.root.level = Level.SEVERE;
  } else {
    Logger.root.level = Level.INFO;
  }

  Logger.root.onRecord.listen((LogRecord record) {
    final String error = record.error == null ? '' : '\n${record.error}';
    final String stackTrace = record.stackTrace == null ? '' : '\n${record.stackTrace}';

    print('${record.time.toIso8601String().substring(8)}/${record.level.name}: ${record.message}'
        '$error$stackTrace');
  });
}
