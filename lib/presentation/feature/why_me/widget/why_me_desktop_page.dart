part of '../why_me.dart';

class WhyMeDesktopPage extends StatelessWidget {
  const WhyMeDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppDimensions.minDesktopWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(context),
            _cards(context),
            SizedBox(
              width: 900,
              child: Text.rich(
                TextSpan(
                  text: LocaleKeys.appName.tr(),
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.accent,
                        fontWeight: FontWeight.bold,
                      ),
                  children: [
                    TextSpan(
                      text: LocaleKeys.whyMeBottomDescription.tr(),
                      style: TextTheme.of(context).headlineSmall?.copyWith(
                            color: ColorName.title,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.whyMeTitle1.tr(),
        style: TextTheme.of(context).displayMedium?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w800,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.whyMeTitle2.tr(),
            style: TextTheme.of(context).displayMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextSpan(
            text: LocaleKeys.whyMeTitle3.tr(),
            style: TextTheme.of(context).displayMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w800,
                ),
          ),
        ],
      ),
    );
  }

  Widget _cards(BuildContext context) {
    final innerCardsHeight = 710.0;
    return SizedBox(
      height: innerCardsHeight + 40,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: innerCardsHeight,
              child: Column(
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: ColorName.card,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(Spacing.xl),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    LocaleKeys.whyMeCardTitle1.tr(),
                                    style: TextTheme.of(context)
                                        .headlineMedium
                                        ?.copyWith(
                                          color: ColorName.title,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  AppSpacing.v_24,
                                  Text(
                                    LocaleKeys.whyMeCardDescription1.tr(),
                                    style:
                                        TextTheme.of(context).bodyMedium?.copyWith(
                                              color: ColorName.descriptionText,
                                              fontWeight: FontWeight.normal,
                                            ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        AppSpacing.h_24,
                        Expanded(
                          child: Card(
                            color: ColorName.card,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(Spacing.xl),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    LocaleKeys.whyMeCardDescription2.tr(),
                                    style:
                                        TextTheme.of(context).bodyMedium?.copyWith(
                                              color: ColorName.descriptionText,
                                              fontWeight: FontWeight.normal,
                                            ),
                                  ),
                                  AppSpacing.v_24,
                                  Text(
                                    LocaleKeys.whyMeCardTitle2.tr(),
                                    style: TextTheme.of(context)
                                        .headlineMedium
                                        ?.copyWith(
                                          color: ColorName.title,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  AppSpacing.v_24,
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Card(
                            color: ColorName.card,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(Spacing.xl),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    LocaleKeys.whyMeCardDescription3.tr(),
                                    style:
                                        TextTheme.of(context).bodyMedium?.copyWith(
                                              color: ColorName.descriptionText,
                                              fontWeight: FontWeight.normal,
                                            ),
                                  ),
                                  AppSpacing.v_24,
                                  Text(
                                    LocaleKeys.whyMeCardTitle3.tr(),
                                    style: TextTheme.of(context)
                                        .headlineMedium
                                        ?.copyWith(
                                          color: ColorName.title,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        AppSpacing.h_24,
                        Expanded(
                          flex: 2,
                          child: Card(
                            color: ColorName.card,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(Spacing.xl),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    LocaleKeys.whyMeCardDescription4.tr(),
                                    style:
                                        TextTheme.of(context).bodyMedium?.copyWith(
                                              color: ColorName.descriptionText,
                                              fontWeight: FontWeight.normal,
                                            ),
                                  ),
                                  AppSpacing.v_24,
                                  Text(
                                    LocaleKeys.whyMeCardTitle4.tr(),
                                    style: TextTheme.of(context)
                                        .headlineMedium
                                        ?.copyWith(
                                          color: ColorName.title,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        AppSpacing.h_24,
                        Expanded(
                          flex: 2,
                          child: Card(
                            color: ColorName.card,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(Spacing.xl),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    LocaleKeys.whyMeCardTitle5.tr(),
                                    style: TextTheme.of(context)
                                        .headlineMedium
                                        ?.copyWith(
                                          color: ColorName.title,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  AppSpacing.v_24,
                                  Text(
                                    LocaleKeys.whyMeCardDescription5.tr(),
                                    style:
                                        TextTheme.of(context).bodyMedium?.copyWith(
                                              color: ColorName.descriptionText,
                                              fontWeight: FontWeight.normal,
                                            ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 500,
            top: 0,
            child: Assets.images.lovelyFace.image(
              width: 130,
              height: 130,
            ),
          ),
          Positioned(
            left: 410,
            bottom: 0,
            child: Assets.images.fire.image(
              width: 175,
              height: 175,
            ),
          ),
          Positioned(
            right: -32,
            top: innerCardsHeight/2-80,
            child: Assets.images.koza.image(
              width: 175,
              height: 175,
            ),
          ),
        ],
      ),
    );
  }
}
