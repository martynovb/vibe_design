import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/di/di.dart';
import '../../shared/localization/locale_keys.g.dart';
import '../../shared/styles/app_colors.dart';
import '../../shared/styles/app_dimensions.dart';
import '../../shared/widgets/device_layout_builder.dart';
import 'bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<HomeBloc>(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return DeviceLayoutBuilder(
            layoutBuilder: (isMobile) => Scaffold(
              body: CustomScrollView(
                shrinkWrap: true,
                slivers: [
                  SliverToBoxAdapter(
                    child: _header(context, isMobile),
                  ),
                  SliverToBoxAdapter(
                    child: _content(context, isMobile),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        const Spacer(),
                        footer(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _content(BuildContext context, bool isMobile) {
    return Padding(
      padding: EdgeInsets.only(
        top: isMobile ? 24 : MediaQuery.of(context).size.height * 0.1,
        right: isMobile ? 16 : 44,
        left: isMobile ? 16 : 44,
      ),
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Text(
              '${LocaleKeys.appName.tr()}:',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _header(BuildContext context, bool isMobile) {
    return isMobile ? _headerWebMobile(context) : _headerDesktop(context);
  }

  Widget _headerWebMobile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          bottom: 12,
          top: 12,
          right: 12,
          left: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.almostBlack
              : AppColors.white,
        ),
        child: Row(
          children: [
            Icon(
              Icons.picture_in_picture_alt,
              size: 40,
            ),
            AppDimensions.sBoxW8,
            Text(
              LocaleKeys.appName.tr(),
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
            const Spacer(),
            Expanded(
              child: Text(
                LocaleKeys.about.tr(),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _headerDesktop(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 44,
        right: 44,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          bottom: 12,
          top: 12,
          right: 12,
          left: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.almostBlack
              : AppColors.white,
        ),
        child: Row(
          children: [
            Icon(
              Icons.picture_in_picture_alt,
              size: 40,
            ),
            AppDimensions.sBoxW8,
            Text(
              LocaleKeys.appName.tr(),
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
            const Spacer(),
            Text(
              LocaleKeys.test.tr(),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
            AppDimensions.sBoxW16,
            Text(
              LocaleKeys.test.tr(),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget footer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppDimensions.footerHeight,
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.grey2
          : AppColors.grey1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  LocaleKeys.privacyPolicy.tr(),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  LocaleKeys.termsOfService.tr(),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                ),
              ),
            ],
          ),
          AppDimensions.sBoxW16,
          Text(
              LocaleKeys.allRightsReserved.tr(args: [
                DateTime.now().year.toString(),
                LocaleKeys.appName.tr()
              ]),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  )),
        ],
      ),
    );
  }
}
