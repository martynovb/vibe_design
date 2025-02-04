part of '../header.dart';

class HeaderDesktopPage extends StatelessWidget {
  const HeaderDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        _headerBackgroundImage(width: width),
        Align(
          alignment: Alignment.center,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: AppDimensions.minDesktopWidth,
            ),
            child: _header(context),
          ),
        ),
      ],
    );
  }

  Widget _cards(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeaderCardInfoWidget(
                title: LocaleKeys.headerCardTitle1.tr(),
                subtitle: Text.rich(
                  TextSpan(
                    text: LocaleKeys.headerCardSubTitle11.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.w600,
                        ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.headerCardSubTitle12.tr(),
                        style: TextTheme.of(context).bodyMedium?.copyWith(
                              color: ColorName.descriptionText,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              HeaderCardInfoWidget(
                title: LocaleKeys.headerCardTitle2.tr(),
                subtitle: Text.rich(
                  TextSpan(
                    text: LocaleKeys.headerCardSubTitle21.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.w600,
                        ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.headerCardSubTitle22.tr(),
                        style: TextTheme.of(context).bodyMedium?.copyWith(
                              color: ColorName.descriptionText,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              HeaderCardInfoWidget(
                title: LocaleKeys.headerCardTitle3.tr(),
                subtitle: Text.rich(
                  TextSpan(
                    text: LocaleKeys.headerCardSubTitle31.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.normal,
                        ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.headerCardSubTitle32.tr(),
                        style: TextTheme.of(context).bodyMedium?.copyWith(
                              color: ColorName.accent,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      TextSpan(
                        text: LocaleKeys.headerCardSubTitle33.tr(),
                        style: TextTheme.of(context).bodyMedium?.copyWith(
                              color: ColorName.descriptionText,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              HeaderCardInfoWidget(
                title: LocaleKeys.headerCardTitle4.tr(),
                subtitle: Text.rich(
                  TextSpan(
                    text: LocaleKeys.headerCardSubTitle41.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.w600,
                        ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.headerCardSubTitle42.tr(),
                        style: TextTheme.of(context).bodyMedium?.copyWith(
                              color: ColorName.descriptionText,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _header(BuildContext context) => Padding(
      padding: const EdgeInsets.only(
        top: 100,
      ),
      child: Column(
        children: [
          _headerTitle(context),
          _headerSubTitle(context),
          _cards(context),
        ],
      ));

  Widget _headerTitle(BuildContext context) => Row(
        children: [
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                LocaleKeys.headerTitle1_yourPath.tr().toUpperCase(),
                style: TextTheme.of(context).displayLarge,
              ),
              AppSpacing.v_16,
              Row(
                children: [
                  ElevatedButtonType1(
                    text: LocaleKeys.freeTrialLesson.tr(),
                    onPressed: () {},
                  ),
                  AppSpacing.h_32,
                  Text.rich(
                    TextSpan(
                      text: LocaleKeys.headerTitle2_in.tr().toUpperCase(),
                      style: TextTheme.of(context).displayLarge,
                      children: [
                        TextSpan(
                          text:
                              LocaleKeys.headerTitle3_design.tr().toUpperCase(),
                          style: TextTheme.of(context).displayLarge?.copyWith(
                                color: ColorName.accent,
                              ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              AppSpacing.v_16,
              Text(
                LocaleKeys.headerTitle4_startsHere.tr().toUpperCase(),
                style: TextTheme.of(context).displayLarge,
              ),
            ],
          ),
          Spacer(),
        ],
      );

  Widget _headerSubTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: 64,
        ),
        child: Text.rich(
          TextSpan(
            text: LocaleKeys.headerSubTitle1.tr(),
            style: TextTheme.of(context).bodyLarge?.copyWith(
                  color: ColorName.descriptionText,
                ),
            children: [
              TextSpan(
                text: LocaleKeys.headerSubTitle2.tr(),
                style: TextTheme.of(context).bodyLarge?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.headerSubTitle3.tr(),
                style: TextTheme.of(context).bodyLarge?.copyWith(
                      color: ColorName.descriptionText,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.headerSubTitle4.tr(),
                style: TextTheme.of(context).bodyLarge?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.headerSubTitle5.tr(),
                style: TextTheme.of(context).bodyLarge?.copyWith(
                      color: ColorName.descriptionText,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.headerSubTitle6.tr(),
                style: TextTheme.of(context).bodyLarge?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.headerSubTitle7.tr(),
                style: TextTheme.of(context).bodyLarge?.copyWith(
                      color: ColorName.descriptionText,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.headerSubTitle8.tr(),
                style: TextTheme.of(context).bodyLarge?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.headerSubTitle9.tr(),
                style: TextTheme.of(context).bodyLarge?.copyWith(
                      color: ColorName.descriptionText,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.headerSubTitle10.tr(),
                style: TextTheme.of(context).bodyLarge?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.headerSubTitle11.tr(),
                style: TextTheme.of(context).bodyLarge?.copyWith(
                      color: ColorName.descriptionText,
                    ),
              ),
            ],
          ),
        ),
      );

  Widget _headerBackgroundImage({
    required double width,
  }) =>
      Container(
        height: 555,
        foregroundDecoration: BoxDecoration(
          color: Colors.black.withValues(
            alpha: 0.6,
          ),
        ),
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Stack(
            children: [
              Positioned(
                left: -width / 2,
                top: 0,
                bottom: 33,
                child: Container(
                  width: width,
                  height: 259,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 20,
                      colors: [
                        Colors.purple.withValues(alpha: 0.5),
                        Colors.transparent,
                      ],
                      stops: const [0.004, 0.06],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -width / 2,
                top: 0,
                bottom: 33,
                child: Container(
                  width: width,
                  height: 259,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 20,
                      colors: [
                        Colors.purple.withValues(alpha: 0.5),
                        Colors.transparent,
                      ],
                      stops: const [0.004, 0.06],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                    ),
                    child: Assets.images.hashtag.image(
                      width: 743,
                      height: 429,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
