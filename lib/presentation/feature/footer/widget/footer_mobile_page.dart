part of '../footer.dart';

class FooterMobilePage extends StatelessWidget {
  const FooterMobilePage({
    super.key,
    required this.onMenuOptionPressed,
  });

  final Function(MenuOption option) onMenuOptionPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorName.card,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 48,
            right: Spacing.md,
            left: Spacing.md,
            bottom: 48,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Spacer(),
                  _socialNetworkIcon(
                    iconPath: Assets.images.telegram.path,
                    hoveredIconPath: Assets.images.telegramHovered.path,
                    callback: () =>
                        context.read<AppBloc>().add(AppEvent.openTelegram()),
                  ),
                  AppSpacing.h_48,
                  _socialNetworkIcon(
                    iconPath: Assets.images.google.path,
                    hoveredIconPath: Assets.images.googleHovered.path,
                    callback: () =>
                        context.read<AppBloc>().add(AppEvent.sendEmail()),
                  ),
                  AppSpacing.h_48,
                  _socialNetworkIcon(
                    iconPath: Assets.images.instagram.path,
                    hoveredIconPath: Assets.images.instagramHovered.path,
                    callback: () =>
                        context.read<AppBloc>().add(AppEvent.openInstagram()),
                  ),
                  AppSpacing.h_48,
                  _socialNetworkIcon(
                    iconPath: Assets.images.linkedin.path,
                    hoveredIconPath: Assets.images.linkedinHovered.path,
                    callback: () =>
                        context.read<AppBloc>().add(AppEvent.openLinkedIn()),
                  ),
                  AppSpacing.h_48,
                  _socialNetworkIcon(
                    iconPath: Assets.images.behance.path,
                    hoveredIconPath: Assets.images.behanceHovered.path,
                    callback: () =>
                        context.read<AppBloc>().add(AppEvent.openBehance()),
                  ),
                  Spacer(),
                ],
              ),
              AppSpacing.v_32,
              Row(
                children: [
                  Spacer(),
                  Text(
                    '${DateTime.now().year}',
                    style: TextTheme.of(context).bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorName.descriptionText,
                        ),
                  ),
                  Spacer(),
                  Text(
                    LocaleKeys.appName.tr(),
                    style: TextTheme.of(context).bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorName.descriptionText,
                        ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialNetworkIcon({
    required String iconPath,
    required String hoveredIconPath,
    required VoidCallback callback,
  }) {
    var isHovered = false;
    return StatefulBuilder(
      builder: (context, setState) {
        return InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onHover: (isHovering) {
            setState(() {
              isHovered = isHovering;
            });
          },
          onTap: callback,
          child: isHovered
              ? SvgPicture.asset(
                  hoveredIconPath,
                  width: 24,
                  height: 24,
                )
              : SvgPicture.asset(
                  iconPath,
                  width: 24,
                  height: 24,
                ),
        );
      },
    );
  }
}
