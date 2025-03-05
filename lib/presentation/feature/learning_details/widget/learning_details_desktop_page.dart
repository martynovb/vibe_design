part of '../learning_details.dart';

class LearningDetailsDesktopPage extends StatelessWidget {
  const LearningDetailsDesktopPage({super.key});

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
            AppSpacing.v_16,
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 900,
                child: _subtitle(context),
              ),
            ),
            AppSpacing.v_64,
            _cards(context),
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.learningDetailsTitle1.tr(),
        style: TextTheme.of(context).displayMedium?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w600,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.learningDetailsTitle2.tr(),
            style: TextTheme.of(context).displayMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w800,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningDetailsTitle3.tr(),
            style: TextTheme.of(context).displayMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }

  Widget _subtitle(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.learningDetailsSubTitle1.tr(),
        style: TextTheme.of(context).headlineSmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.normal,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.learningDetailsSubTitle2.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningDetailsSubTitle3.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningDetailsSubTitle4.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningDetailsSubTitle5.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }

  Widget _cards(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: _card(
                context: context,
                title: LocaleKeys.learningDetailsCardTitle1,
                description: LocaleKeys.learningDetailsCardDescription1,
              ),
            ),
            AppSpacing.h_24,
            Flexible(
              flex: 2,
              child: _card(
                context: context,
                title: LocaleKeys.learningDetailsCardTitle2,
                description: LocaleKeys.learningDetailsCardDescription2,
              ),
            ),
          ],
        ),
        Transform.translate(
          offset: const Offset(0, -Spacing.xxl),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppSpacing.v_64,
                    _card(
                      context: context,
                      title: LocaleKeys.learningDetailsCardTitle3,
                      description: LocaleKeys.learningDetailsCardDescription3,
                    ),
                  ],
                ),
              ),
              AppSpacing.h_24,
              Flexible(
                flex: 7,
                child: Column(
                  children: [
                    _card(
                      context: context,
                      title: LocaleKeys.learningDetailsCardTitle4,
                      description: LocaleKeys.learningDetailsCardDescription4,
                    ),
                    AppSpacing.v_16,
                    Text.rich(
                      TextSpan(
                        text: LocaleKeys.learningDetailsBottomDescription1.tr(),
                        style: TextTheme.of(context).headlineSmall?.copyWith(
                              color: ColorName.title,
                              fontWeight: FontWeight.normal,
                            ),
                        children: [
                          TextSpan(
                            text: LocaleKeys.learningDetailsBottomDescription2
                                .tr(),
                            style:
                                TextTheme.of(context).headlineSmall?.copyWith(
                                      color: ColorName.accent,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          TextSpan(
                            text: LocaleKeys.learningDetailsBottomDescription3
                                .tr(),
                            style:
                                TextTheme.of(context).headlineSmall?.copyWith(
                                      color: ColorName.title,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          TextSpan(
                            text: LocaleKeys.learningDetailsBottomDescription4
                                .tr(),
                            style:
                                TextTheme.of(context).headlineSmall?.copyWith(
                                      color: ColorName.accent,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          TextSpan(
                            text: LocaleKeys.learningDetailsBottomDescription5
                                .tr(),
                            style:
                                TextTheme.of(context).headlineSmall?.copyWith(
                                      color: ColorName.title,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _card({
    required BuildContext context,
    required String title,
    required String description,
  }) {
    return Card(
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
              title.tr(),
              style: TextTheme.of(context).headlineMedium?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            AppSpacing.v_24,
            Text(
              description.tr(),
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.descriptionText,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
