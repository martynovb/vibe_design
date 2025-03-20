part of '../why_me.dart';

class WhyMeMobilePage extends StatelessWidget {
  const WhyMeMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(context),
          AppSpacing.v_16,
          _cards(context),
          AppSpacing.v_8,
          Text.rich(
            TextSpan(
              text: LocaleKeys.appName.tr(),
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.accent,
                    fontWeight: FontWeight.bold,
                  ),
              children: [
                TextSpan(
                  text: LocaleKeys.whyMeBottomDescription.tr(),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.whyMeTitle1.tr(),
        style: TextTheme.of(context).displaySmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w800,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.whyMeTitle2.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextSpan(
            text: LocaleKeys.whyMeTitle3.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w800,
                ),
          ),
        ],
      ),
    );
  }

  Widget _cards(BuildContext context) {
    final cards = [
      Stack(
        children: [
          Card(
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
                    style: TextTheme.of(context).headlineSmall?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  AppSpacing.v_24,
                  Text(
                    LocaleKeys.whyMeCardDescription1.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -8,
            top: 0,
            child: Assets.images.lovelyFace.image(
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
      Card(
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
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              AppSpacing.v_24,
              Text(
                LocaleKeys.whyMeCardTitle2.tr(),
                style: TextTheme.of(context).headlineSmall?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
      Stack(
        children: [
          Card(
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
                    style: TextTheme.of(context).headlineSmall?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  AppSpacing.v_24,
                  Text(
                    LocaleKeys.whyMeCardDescription5.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -8,
            top: 0,
            child: Assets.images.koza.image(
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
      Card(
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
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              AppSpacing.v_24,
              Text(
                LocaleKeys.whyMeCardTitle4.tr(),
                style: TextTheme.of(context).headlineSmall?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
      Stack(
        children: [
          Card(
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
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  AppSpacing.v_24,
                  Text(
                    LocaleKeys.whyMeCardTitle3.tr(),
                    style: TextTheme.of(context).headlineSmall?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -0,
            bottom: 16,
            child: Assets.images.fire.image(
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    ];

    return Column(
      children: cards,
    );
  }
}
