part of '../goal.dart';

class GoalMobilePage extends StatelessWidget {
  const GoalMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: LocaleKeys.goalTitle1.tr(),
                style: TextTheme.of(context).displaySmall?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.w800,
                    ),
                children: [
                  TextSpan(
                    text: LocaleKeys.goalTitle2.tr(),
                    style: TextTheme.of(context).displaySmall?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.goalTitle3.tr(),
                    style: TextTheme.of(context).displaySmall?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextTheme.of(context).displaySmall?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.goalTitle4.tr(),
                    style: TextTheme.of(context).displaySmall?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.goalTitle5.tr(),
                    style: TextTheme.of(context).displaySmall?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            AppSpacing.v_8,
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
            AppSpacing.v_64,
            _cards(context),
          ],
        ),
      ),
    );
  }

  Widget _cards(BuildContext context) => Column(
        children: [
          _card1(context),
          AppSpacing.v_16,
          _card3(context),
          AppSpacing.v_16,
          _card2(context),
        ],
      );

  Widget _card1(BuildContext context) => SizedBox(
        width: double.infinity,
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
                    style: TextTheme.of(context).bodyLarge?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.bold,
                        ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.goalCard1Title2.tr(),
                        style: TextTheme.of(context).bodyLarge?.copyWith(
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

  Widget _card2(BuildContext context) => SizedBox(
        width: double.infinity,
        child: Card(
          color: ColorName.card,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Spacing.lg),
            child: Center(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      LocaleKeys.goalCard2Title1.tr(),
                      style: TextTheme.of(context).displaySmall?.copyWith(
                            color: ColorName.accent,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  AppSpacing.v_8,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      LocaleKeys.goalCard2Title2.tr(),
                      style: TextTheme.of(context).headlineMedium?.copyWith(
                            color: ColorName.title,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  Widget _card3(BuildContext context) => SizedBox(
        width: double.infinity,
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
                    style: TextTheme.of(context).bodyLarge?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.bold,
                        ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.goalCard3Title2.tr(),
                        style: TextTheme.of(context).bodyLarge?.copyWith(
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
