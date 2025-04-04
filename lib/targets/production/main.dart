import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:vibe_design/presentation/feature/app/app_widget.dart';
import 'package:vibe_design/targets/run_configurations.dart';

import '../../data/network/analytics_logger.dart';
import '../../presentation/shared/di/di.dart';

void main() {
  final startTime = DateTime.now();
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();

      configureDependencies(environment: production);

      // Init crashlytics
      await SentryFlutter.init(
        (options) {
          options.dsn = RunConfigurations.sentryDsn;
          options.sendDefaultPii = true;
          options.tracesSampleRate = 1.0;
        },
      );
      if (kIsWeb) {
        usePathUrlStrategy();
      }
      runApp(const VibeDesignApp());
      AnalyticsLogger.logMessage(
        'main',
        'App started in ${DateTime.now().difference(startTime)}',
      );
    },
    (error, stackTrace) async {
      await Sentry.captureException(
        error,
        stackTrace: stackTrace,
      );
    },
  );
}
