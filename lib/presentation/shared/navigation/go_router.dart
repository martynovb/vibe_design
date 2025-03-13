import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vibe_design/presentation/feature/level_details/model/course_type.dart';
import 'package:vibe_design/presentation/feature/menu/menu_option.dart';

import '../../feature/home/home.dart';
import '../../feature/level_details/course_details.dart';
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
            pageBuilder: (context, state) {
              final extraData = state.extra as Map<String, dynamic>?;
              final MenuOption? menuOption = extraData?['scrollTo'];
              return NoTransitionPage(
                key: state.pageKey,
                child: HomePage(
                  scrollTo: menuOption,
                ),
              );
            }),
        GoRoute(
          path: RouteConstants.details().path,
          pageBuilder: (context, state) {
            final String? courseType = state.uri.queryParameters['courseType'];
            if (courseType != null) {
              return NoTransitionPage(
                key: state.pageKey,
                child: CourseDetailsPage(
                  courseType: CourseType.values.firstWhereOrNull(
                        (course) => course.name == courseType,
                      ) ??
                      CourseType.beginer,
                ),
              );
            }
            return NoTransitionPage(
              key: state.pageKey,
              child: const HomePage(),
            );
          },
        ),
      ],
    );
