part of '../goal.dart';

class GoalDesktopPage extends StatelessWidget {
  const GoalDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppDimensions.minDesktopWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: LocaleKeys.goalTitle1.tr(),
                style: TextTheme.of(context).displayMedium?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.w800,
                    ),
                children: [
                  TextSpan(
                    text: LocaleKeys.goalTitle2.tr(),
                    style: TextTheme.of(context).displayMedium?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.goalTitle3.tr(),
                    style: TextTheme.of(context).displayMedium?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ],
              ),
            ),
            AppSpacing.v_8,
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    text: '"',
                    style: TextTheme.of(context).headlineSmall?.copyWith(
                          color: ColorName.title,
                        ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.goalSubTitle1.tr(),
                        style: TextTheme.of(context).headlineSmall?.copyWith(
                              color: ColorName.accent,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      TextSpan(
                        text: LocaleKeys.goalSubTitle2.tr(),
                        style: TextTheme.of(context).headlineSmall?.copyWith(
                              color: ColorName.title,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      TextSpan(
                        text: '"',
                        style: TextTheme.of(context).headlineSmall?.copyWith(
                              color: ColorName.title,
                            ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text.rich(
                  TextSpan(
                    text: LocaleKeys.goalTitle4.tr(),
                    style: TextTheme.of(context).displayMedium?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w800,
                        ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.goalTitle5.tr(),
                        style: TextTheme.of(context).displayMedium?.copyWith(
                              color: ColorName.title,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            AppSpacing.v_64,
            _cards(context),
          ],
        ),
      ),
    );
  }

  Widget _cards(BuildContext context) => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _card1(context),
            _card2(context),
            _card3(context),
          ],
        ),
      );

  Widget _card1(BuildContext context) => Container(
        constraints: const BoxConstraints(
          maxWidth: 500,
        ),
        child: Card(
          color: ColorName.card,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Spacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: LocaleKeys.goalCard1Title1.tr(),
                    style: TextTheme.of(context).headlineMedium?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.bold,
                        ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.goalCard1Title2.tr(),
                        style: TextTheme.of(context).headlineMedium?.copyWith(
                              color: ColorName.accent,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.v_24,
                Text(
                  LocaleKeys.goalCard1Description.tr(),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.descriptionText,
                      ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _card2(BuildContext context) => Container(
        constraints: const BoxConstraints(
          maxWidth: 288,
          
          minHeight: double.infinity,
        ),
        child: Card(
          color: ColorName.card,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Spacing.lg),
            child: Center(
              child: Text.rich(
                TextSpan(
                  text: LocaleKeys.goalCard2Title1.tr(),
                  style: TextTheme.of(context).displayLarge?.copyWith(
                        color: ColorName.accent,
                        fontWeight: FontWeight.bold,
                      ),
                  children: [
                    TextSpan(
                      text: LocaleKeys.goalCard2Title2.tr(),
                      style: TextTheme.of(context).headlineMedium?.copyWith(
                            color: ColorName.title,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );

  Widget _card3(BuildContext context) => Container(
        constraints: const BoxConstraints(
          maxWidth: 390,
        ),
        child: Card(
          color: ColorName.card,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Spacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: LocaleKeys.goalCard3Title1.tr(),
                    style: TextTheme.of(context).headlineMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.bold,
                        ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.goalCard3Title2.tr(),
                        style: TextTheme.of(context).headlineMedium?.copyWith(
                              color: ColorName.title,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.v_24,
                Text(
                  LocaleKeys.goalCard3Description.tr(),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.descriptionText,
                      ),
                ),
              ],
            ),
          ),
        ),
      );
}
