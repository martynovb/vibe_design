part of '../learning_details.dart';

class LearningDetailsMobilePage extends StatelessWidget {
  const LearningDetailsMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppDimensions.minDesktopWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
              child: _title(context),
            ),
            AppSpacing.v_16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
              child: _subtitle(context),
            ),
            AppSpacing.v_24,
            _cards(context),
            AppSpacing.v_16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
              child: _bottomDescription(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.learningDetailsTitle1.tr(),
        style: TextTheme.of(context).displaySmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w600,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.learningDetailsTitle2.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w800,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningDetailsTitle3.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
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
        style: TextTheme.of(context).bodyMedium?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.normal,fontSize: AppTextSizes.mobileSubTitleSize,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.learningDetailsSubTitle2.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningDetailsSubTitle3.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningDetailsSubTitle4.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningDetailsSubTitle5.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
        ],
      ),
    );
  }

  Widget _bottomDescription(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.learningDetailsBottomDescription1.tr(),
        style: TextTheme.of(context).bodyMedium?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.normal,fontSize: AppTextSizes.mobileSubTitleSize,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.learningDetailsBottomDescription2.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningDetailsBottomDescription3.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningDetailsBottomDescription4.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningDetailsBottomDescription5.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
        ],
      ),
    );
  }

  Widget _cards(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          AppSpacing.h_8,
          _card(
            context: context,
            title: LocaleKeys.learningDetailsCardTitle1,
            description: LocaleKeys.learningDetailsCardDescription1,
          ),
          _card(
            context: context,
            title: LocaleKeys.learningDetailsCardTitle2,
            description: LocaleKeys.learningDetailsCardDescription2,
          ),
          _card(
            context: context,
            title: LocaleKeys.learningDetailsCardTitle3,
            description: LocaleKeys.learningDetailsCardDescription3,
          ),
          _card(
            context: context,
            title: LocaleKeys.learningDetailsCardTitle4,
            description: LocaleKeys.learningDetailsCardDescription4,
          ),
        ],
      ),
    );
  }

  Widget _card({
    required BuildContext context,
    required String title,
    required String description,
  }) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 270,
        margin: const EdgeInsets.only(right: 8),
        child: IntrinsicWidth(
          stepWidth: 1,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 120,
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
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: constraints.maxWidth - (Spacing.lg * 2),
                      ),
                      child: Text(
                        title.tr(),
                        style: TextTheme.of(context).headlineMedium?.copyWith(
                              color: ColorName.title,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    AppSpacing.v_16,
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: constraints.maxWidth - (Spacing.lg * 2),
                      ),
                      child: Text(
                        description.tr(),
                        style: TextTheme.of(context).bodyMedium?.copyWith(
                              color: ColorName.descriptionText,
                              fontWeight: FontWeight.normal,fontSize: AppTextSizes.mobileSubTitleSize,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
