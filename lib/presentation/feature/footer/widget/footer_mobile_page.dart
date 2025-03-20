part of '../footer.dart';

class FooterMobilePage extends StatelessWidget {
  FooterMobilePage({
    super.key,
    required this.onMenuOptionPressed,
  });

  final TextEditingController _emailController = TextEditingController();
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

  Widget _emailInput(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorName.title,
        borderRadius: BorderRadius.circular(4),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: LocaleKeys.footerSection_email_hint.tr(),
                  hintStyle: TextTheme.of(context).bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorName.descriptionText,
                      ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Spacing.sm, horizontal: Spacing.lg),
                ),
                style: TextTheme.of(context).bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: ColorName.background,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: InkWell(
                onTap: () {
                  context.read<FooterBloc>().add(
                        FooterEvent.applyForCourse(_emailController.text),
                      );
                  _emailController.text = '';
                },
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  height: 54,
                  width: 54,
                  decoration: BoxDecoration(
                    color: ColorName.accent,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4),
                      bottomRight: Radius.circular(4),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(Spacing.xs),
                    child: Assets.images.arrowInputEmail.svg(),
                  ),
                ),
              ),
            ),
          ],
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

  Widget _footerMenuItem({
    required BuildContext context,
    required String title,
    required MenuOption menuOption,
  }) {
    return InkWell(
      onTap: () {
        onMenuOptionPressed(menuOption);
      },
      child: Text(
        title,
        style: TextTheme.of(context).bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorName.descriptionText,
            ),
      ).tr(),
    );
  }
}
