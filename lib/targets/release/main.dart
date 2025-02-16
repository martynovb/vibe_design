import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:vibe_design/presentation/feature/app/app_widget.dart';
import 'package:vibe_design/targets/run_configurations.dart';

import '../../presentation/shared/di/di.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();

      configureDependencies(environment: development);

      // Init crashlytics
      await SentryFlutter.init(
        (options) => options.dsn = RunConfigurations.sentryDsn,
      );
      if (kIsWeb) {
        usePathUrlStrategy();
      }
      runApp(const VibeDesignApp());
    },
    (error, stackTrace) async {
      await Sentry.captureException(
        error,
        stackTrace: stackTrace,
      );
    },
  );
}
