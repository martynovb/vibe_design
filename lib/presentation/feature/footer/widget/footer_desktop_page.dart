part of '../footer.dart';

class FooterDesktopPage extends StatelessWidget {
  FooterDesktopPage({
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
        child: SizedBox(
          width: AppDimensions.minDesktopWidth,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 100,
            ),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Text(
                              LocaleKeys.footerSection_title.tr(),
                              style: TextTheme.of(context)
                                  .headlineMedium
                                  ?.copyWith(
                                    color: ColorName.title,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            AppSpacing.v_48,
                            Padding(
                              padding: const EdgeInsets.only(right: Spacing.xl),
                              child: _emailInput(context),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            Expanded(
                              child: IntrinsicWidth(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _footerMenuItem(
                                      context: context,
                                      title: LocaleKeys.main,
                                      menuOption: MenuOption.home,
                                    ),
                                    AppSpacing.v_32,
                                    _footerMenuItem(
                                      context: context,
                                      title: LocaleKeys.about,
                                      menuOption: MenuOption.about,
                                    ),
                                    AppSpacing.v_32,
                                    _footerMenuItem(
                                      context: context,
                                      title: LocaleKeys.courses,
                                      menuOption: MenuOption.courses,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: IntrinsicWidth(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _footerMenuItem(
                                      context: context,
                                      title: LocaleKeys.pros,
                                      menuOption: MenuOption.pros,
                                    ),
                                    AppSpacing.v_32,
                                    _footerMenuItem(
                                      context: context,
                                      title: LocaleKeys.learnings,
                                      menuOption: MenuOption.learn,
                                    ),
                                    AppSpacing.v_32,
                                    _footerMenuItem(
                                      context: context,
                                      title: LocaleKeys.prices,
                                      menuOption: MenuOption.pricing,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.v_128,
                Row(
                  children: [
                    Text(
                      '${DateTime.now().year}',
                      style: TextTheme.of(context).bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: ColorName.descriptionText,
                          ),
                    ),
                    AppSpacing.h_24,
                    Text(
                      LocaleKeys.appName.tr(),
                      style: TextTheme.of(context).bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: ColorName.descriptionText,
                          ),
                    ),
                    Spacer(),
                    _socialNetworkIcon(
                      iconPath: Assets.images.telegram.path,
                      hoveredIconPath: Assets.images.telegramHovered.path,
                      callback: () {},
                    ),
                    AppSpacing.h_48,
                    _socialNetworkIcon(
                      iconPath: Assets.images.google.path,
                      hoveredIconPath: Assets.images.googleHovered.path,
                      callback: () {},
                    ),
                    AppSpacing.h_48,
                    _socialNetworkIcon(
                      iconPath: Assets.images.instagram.path,
                      hoveredIconPath: Assets.images.instagramHovered.path,
                      callback: () {},
                    ),
                    AppSpacing.h_48,
                    _socialNetworkIcon(
                      iconPath: Assets.images.linkedin.path,
                      hoveredIconPath: Assets.images.linkedinHovered.path,
                      callback: () {},
                    ),
                    AppSpacing.h_48,
                  ],
                ),
                AppSpacing.v_32,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _emailInput(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
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
