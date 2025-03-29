import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:vibe_design/data/network/network_asset_loader.dart';
import 'package:vibe_design/presentation/shared/app_constants.dart';

import '../../shared/navigation/go_router.dart';
import '../../shared/navigation/route_constants.dart';
import '../../shared/styles/app_styles.dart';
import 'bloc/app_bloc.dart';

class VibeDesignApp extends StatelessWidget {
  const VibeDesignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('uk', 'UK'),
      ],
      path: AppConstants.translatesPath,
      assetLoader: NetworkAssetLoader(),
      fallbackLocale: const Locale('uk'),
      useOnlyLangCode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GetIt.I.get<AppBloc>()
              ..add(
                const AppEvent.appStarted(),
              ),
          ),
        ],
        child: const VibeDesignAppWidget(),
      ),
    );
  }
}

class VibeDesignAppWidget extends StatelessWidget {
  const VibeDesignAppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, appState) {
        return MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: AppTheme.lightThemeData,
          darkTheme: AppTheme.darkThemeData,
          themeMode: appState.themeMode,
          routerConfig: router(
            initialLocation: RouteConstants.home.path,
          ),
        );
      },
    );
  }
}
