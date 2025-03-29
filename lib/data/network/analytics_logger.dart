import 'package:flutter/foundation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:vibe_design/targets/run_configurations.dart';

class AnalyticsLogger {
  static void logMessage(String tag, String message) {
    RunConfigurations.envName == 'development'
        ? _debugLogMessage(tag, message)
        : Sentry.captureMessage(
            '$tag: $message',
            level: SentryLevel.debug,
          );
  }

  static void _debugLogMessage(String tag, String message) {
    if (kDebugMode) {
      print('$tag: $message');
    }
  }
}
