import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../feature/home/home.dart';
import '../widgets/error_page.dart';
import 'route_constants.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router({
  required String initialLocation,
}) =>
    GoRouter(
      routerNeglect: true,
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: initialLocation,
      errorBuilder: (context, state) {
        return const ErrorPage();
      },
      routes: [
        GoRoute(
          path: RouteConstants.home.path,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const HomePage(),
          ),
        ),
      ],
    );
